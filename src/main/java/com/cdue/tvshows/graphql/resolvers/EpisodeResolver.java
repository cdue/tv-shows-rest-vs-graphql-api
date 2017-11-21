package com.cdue.tvshows.graphql.resolvers;

import com.cdue.tvshows.model.Episode;
import com.cdue.tvshows.repository.EpisodeRepository;
import com.cdue.tvshows.repository.SeasonRepository;
import com.coxautodev.graphql.tools.GraphQLResolver;
import org.springframework.stereotype.Component;

@Component
public class EpisodeResolver implements GraphQLResolver<Episode> {

    private final SeasonRepository seasonRepository;
    private final EpisodeRepository episodeRepository;

    public EpisodeResolver(SeasonRepository seasonRepository, EpisodeRepository episodeRepository) {
        this.seasonRepository = seasonRepository;
        this.episodeRepository = episodeRepository;
    }
}
