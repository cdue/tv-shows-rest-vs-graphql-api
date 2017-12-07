package com.cdue.tvshows.graphql.util;

import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.type.MapType;
import graphql.ExecutionInput;
import graphql.ExecutionResult;
import graphql.GraphQL;
import graphql.GraphQLException;
import graphql.execution.instrumentation.ChainedInstrumentation;
import graphql.execution.instrumentation.Instrumentation;
import graphql.execution.instrumentation.tracing.TracingInstrumentation;
import graphql.schema.GraphQLSchema;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.util.Map;

import static java.util.Collections.singletonList;


@Component
public class GraphqlUtils {

    public static final String QUERY = "query";
    public static final String VARIABLES = "variables";
    public static final String OPERATION_NAME = "operationName";

    public static ExecutionInput getExecutionInputFromQueryPayload(String payload) throws IOException {

        ExecutionInput executionInput = null;

        // get query, operationName, and variables from payload
        ObjectMapper mapper = new ObjectMapper();
        mapper.enable(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT);
        MapType type = mapper.getTypeFactory().constructMapType(
                Map.class, String.class, Object.class);
        Map<String, Object> data = mapper.readValue(payload, type);

        // Parse query payload
        if(data.containsKey(QUERY)) {

            ExecutionInput.Builder builder = ExecutionInput.newExecutionInput().query((String) data.get(QUERY));

            if (data.containsKey(VARIABLES) && data.get(VARIABLES) != null ) {

                Map<String, Object> variables = (Map<String, Object>) data.get(VARIABLES);

                if (variables != null && !variables.isEmpty()) {
                    builder.variables(variables);
                }
            }

            if (data.containsKey(OPERATION_NAME) && data.get(OPERATION_NAME) != null) {
                builder.operationName((String) data.get(OPERATION_NAME));
            }

            executionInput = builder.build();
        }

        return executionInput;
    }

    public static ExecutionResult executeQuery(GraphQLSchema graphQLSchema, String payload) {
        ExecutionInput executionInput;

        LoggerFactory.getLogger("GraphqlUtils").debug("given query: ", payload);

        try {
            executionInput = GraphqlUtils.getExecutionInputFromQueryPayload(payload);
        } catch (IOException e) {
            throw new GraphQLException("Bad subscription payload.");
        }

        Instrumentation instrumentation = new ChainedInstrumentation(
                singletonList(new TracingInstrumentation())
        );

        GraphQL graphQL = GraphQL
                .newGraphQL(graphQLSchema)
                .instrumentation(instrumentation)
                .build();

        ExecutionResult executionResult = graphQL.execute(executionInput);

        return executionResult;
    }
}
