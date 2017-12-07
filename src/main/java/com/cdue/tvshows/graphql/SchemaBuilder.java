package com.cdue.tvshows.graphql;

import com.cdue.tvshows.model.AverageRating;
import com.cdue.tvshows.repository.VoteRepository;
import com.coxautodev.graphql.tools.SchemaParser;
import graphql.Scalars;
import graphql.schema.GraphQLArgument;
import graphql.schema.GraphQLObjectType;
import graphql.schema.GraphQLSchema;
import io.reactivex.BackpressureStrategy;
import io.reactivex.Flowable;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.observables.ConnectableObservable;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.annotation.PostConstruct;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/**
 * Create a GraphQL Schema Bean
 *
 * Hack: graphql-java-tools doesn't allow to return a Flowable on a subscription resolver,
 * so we only use it to parse query and mutation types from the .graphqls file, and then we programmatically add
 * the subscription type.
 */
@Configuration
public class SchemaBuilder {

    private final SchemaParser schemaParser;
    private final VoteRepository voteRepository;

    public SchemaBuilder(SchemaParser schemaParser, VoteRepository voteRepository) {
        this.schemaParser = schemaParser;
        this.voteRepository = voteRepository;
    }

    @Bean
    GraphQLSchema graphQLSchema() {

        GraphQLSchema schema = schemaParser.makeExecutableSchema();

        GraphQLSchema schemaWithSubscription = GraphQLSchema.newSchema()
                .query(schema.getQueryType())
                .mutation(schema.getMutationType())
                .subscription(GraphQLObjectType.newObject()
                        .name("subscription")
                        .field(field -> field
                                .name("getTvShowRatingUpdates")
                                .argument(new GraphQLArgument("tvShowId", Scalars.GraphQLID))
                                .type(schema.getObjectType("TvShowRating"))
                                .dataFetcher(environment -> {
                                    Long tvShowId = Long.parseLong(environment.getArgument("tvShowId"));
                                    return getAverageRatingPublisher(tvShowId);
                                })
                        )
                        .build())
                .build();

        return schemaWithSubscription;
    }

    public Flowable<AverageRating> getAverageRatingPublisher(Long tvShowId) {

        Observable<AverageRating> averageRatingObservable = Observable.create(emitter -> {

            ScheduledExecutorService executorService = Executors.newScheduledThreadPool(1);
            executorService.scheduleAtFixedRate(newStockTick(emitter, tvShowId), 0, 2, TimeUnit.SECONDS);
        });

        ConnectableObservable<AverageRating> connectableObservable = averageRatingObservable.share().publish();
        connectableObservable.connect();

        return connectableObservable.toFlowable(BackpressureStrategy.BUFFER);
    }

    private Runnable newStockTick(ObservableEmitter<AverageRating> emitter, Long tvShowId) {
        return () -> {
            AverageRating averageRating = voteRepository.findTvShowAverageRating(tvShowId);
            if (averageRating != null) {
                emitAverageRatingUpdate(emitter, averageRating);
            }
        };
    }

    private void emitAverageRatingUpdate(ObservableEmitter<AverageRating> emitter, AverageRating averageRatingUpdate) {
        try {
            emitter.onNext(averageRatingUpdate);
        } catch (RuntimeException rte) {
            rte.printStackTrace();
        }
    }
}
