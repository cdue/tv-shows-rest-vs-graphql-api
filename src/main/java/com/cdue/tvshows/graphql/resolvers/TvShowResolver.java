package com.cdue.tvshows.graphql.resolvers;

import com.cdue.tvshows.model.AverageRating;
import com.cdue.tvshows.model.Season;
import com.cdue.tvshows.model.TvShow;
import com.cdue.tvshows.repository.SeasonRepository;
import com.cdue.tvshows.repository.VoteRepository;
import com.coxautodev.graphql.tools.GraphQLResolver;
import com.google.common.collect.Iterables;
import org.springframework.stereotype.Component;

@Component
public class TvShowResolver implements GraphQLResolver<TvShow> {

    private final SeasonRepository seasonRepository;
    private final VoteRepository voteRepository;

    public TvShowResolver(SeasonRepository seasonRepository, VoteRepository voteRepository) {
        this.seasonRepository = seasonRepository;
        this.voteRepository = voteRepository;
    }

    public Iterable<Season> seasons(TvShow tvShow, Integer last) {

        if (last != null) {
            return Iterables.limit(seasonRepository
                    .findByTvShowIdOrderByReleaseYearDesc(tvShow.getId()), last);
        }

        return tvShow.getSeasons();
    }

    public AverageRating rating(TvShow tvShow) {
        return voteRepository.findTvShowAverageRating(tvShow.getId());
    }
}

