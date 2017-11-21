package com.cdue.tvshows;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@EnableJpaRepositories()
@SpringBootApplication
public class TvShowsRestVsGraphQlApiApplication {

    public static void main(String[] args) {
        SpringApplication.run(TvShowsRestVsGraphQlApiApplication.class, args);

        // Comment the following to load Schema from tv-shows-schema.graphqls
        /*@Bean
        GraphQLSchema schema() {
            return schemaBuilder.getSchema();
        }*/
    }
}
