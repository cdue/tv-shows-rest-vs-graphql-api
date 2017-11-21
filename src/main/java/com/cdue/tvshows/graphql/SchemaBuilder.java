package com.cdue.tvshows.graphql;

import com.cdue.tvshows.repository.TvShowRepository;
import graphql.Scalars;
import graphql.schema.GraphQLList;
import graphql.schema.GraphQLObjectType;
import graphql.schema.GraphQLSchema;
import org.springframework.stereotype.Component;

/**
 * Sample GraphQL Schema built programmatically.
 */
@Component
public class SchemaBuilder {

    private final TvShowRepository tvShowRepository;

    private GraphQLSchema schema;

    public SchemaBuilder(TvShowRepository tvShowRepository) {
        this.tvShowRepository = tvShowRepository;
    }

    public GraphQLSchema getSchema() {
        if (schema == null) {
            GraphQLObjectType tvShow = GraphQLObjectType.newObject()
                    .name("tvShow")
                    .field(field -> field
                            .name("id")
                            .type(Scalars.GraphQLID)
                    )
                    .field(field -> field
                            .name("title")
                            .type(Scalars.GraphQLString)
                    )
                    .build();

            schema = GraphQLSchema.newSchema()
                    .query(GraphQLObjectType.newObject()
                            .name("query")
                            .field(field -> field
                                    .name("tvShows")
                                    .type(new GraphQLList(tvShow))
                                    .dataFetcher(environment -> tvShowRepository.findAll())
                            )
                            .build())
                    // .mutation()
                    .build();
        }

        return schema;
    }
}
