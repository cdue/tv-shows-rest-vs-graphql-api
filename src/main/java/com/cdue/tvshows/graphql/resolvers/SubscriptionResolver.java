package com.cdue.tvshows.graphql.resolvers;

import com.cdue.tvshows.model.AverageRating;
import com.cdue.tvshows.repository.VoteRepository;
import com.coxautodev.graphql.tools.GraphQLSubscriptionResolver;
import org.springframework.stereotype.Component;

@Component
public class SubscriptionResolver implements GraphQLSubscriptionResolver {

    private final VoteRepository voteRepository;

    public SubscriptionResolver(VoteRepository voteRepository) {
        this.voteRepository = voteRepository;
    }

    AverageRating getTvShowRatingUpdates(Long tvShowid) {
        // TODO

        return null;
    }
}
