package com.cdue.tvshows.graphql.error;

import graphql.GraphQLError;
import graphql.servlet.DefaultGraphQLErrorHandler;
import graphql.servlet.GenericGraphQLError;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class CustomGraphQLErrorHandler extends DefaultGraphQLErrorHandler {

    @Override
    public List<GraphQLError> processErrors(List<GraphQLError> errors) {
        final List<GraphQLError> clientErrors = filterGraphQLErrors(errors);
        if (clientErrors.size() < errors.size()) {

            // Some errors were filtered out to hide implementation - put a generic error in place.
            clientErrors.add(new GenericGraphQLError("[Custom error handler...] An error occurred"));

            errors.stream()
                    .filter(error -> !isClientError(error))
                    .forEach(error -> {
                        if(error instanceof Throwable) {
                            log.error("Error executing query!", (Throwable) error);
                        } else {
                            log.error("Error executing query ({}): {}", error.getClass().getSimpleName(), error.getMessage());
                        }
                    });
        }

        return clientErrors;
    }

}
