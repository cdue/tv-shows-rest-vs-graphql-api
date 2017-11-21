package com.cdue.tvshows.graphql.resolvers;

import com.cdue.tvshows.model.TvShow;
import com.cdue.tvshows.model.Vote;
import com.cdue.tvshows.repository.TvShowRepository;
import com.cdue.tvshows.repository.VoteRepository;
import com.coxautodev.graphql.tools.GraphQLMutationResolver;
import graphql.GraphQLException;
import org.springframework.stereotype.Component;
import org.springframework.validation.annotation.Validated;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;

@Validated
@Component
public class MutationResolver implements GraphQLMutationResolver {

    private final VoteRepository voteRepository;
    private final TvShowRepository tvShowRepository;


    public MutationResolver(VoteRepository voteRepository, TvShowRepository tvShowRepository) {
        this.voteRepository = voteRepository;
        this.tvShowRepository = tvShowRepository;
    }

    public TvShow voteForTvShow(Long tvShowId, @Min(0) @Max(5) Integer stars) {

        TvShow tvShow = tvShowRepository.findOne(tvShowId);

        if (tvShow == null) {
            throw new GraphQLException("Unknown TV Show");
        }

        return voteRepository.save(new Vote(tvShow, stars)).getTvShow();
    }
}
