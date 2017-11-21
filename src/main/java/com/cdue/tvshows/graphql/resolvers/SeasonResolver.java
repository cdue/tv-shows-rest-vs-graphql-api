package com.cdue.tvshows.graphql.resolvers;

import com.cdue.tvshows.model.Season;
import com.cdue.tvshows.repository.EpisodeRepository;
import com.coxautodev.graphql.tools.GraphQLResolver;
import org.springframework.stereotype.Component;

@Component
public class SeasonResolver implements GraphQLResolver<Season> {

    private final EpisodeRepository episodeRepository;

    public SeasonResolver(EpisodeRepository episodeRepository) {
        this.episodeRepository = episodeRepository;
    }
}
