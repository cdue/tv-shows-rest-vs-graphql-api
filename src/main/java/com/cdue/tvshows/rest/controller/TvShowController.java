package com.cdue.tvshows.rest.controller;

import com.cdue.tvshows.model.*;
import com.cdue.tvshows.repository.*;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/tvshows")
public class TvShowController {

    private final TvShowRepository tvShowRepository;
    private final SeasonRepository seasonRepository;
    private final EpisodeRepository episodeRepository;
    private final ActorRepository actorRepository;
    private final VoteRepository voteRepository;

    public TvShowController(TvShowRepository tvShowRepository, SeasonRepository seasonRepository, EpisodeRepository episodeRepository, ActorRepository actorRepository, VoteRepository voteRepository) {
        this.tvShowRepository = tvShowRepository;
        this.seasonRepository = seasonRepository;
        this.episodeRepository = episodeRepository;
        this.actorRepository = actorRepository;
        this.voteRepository = voteRepository;
    }

    @GetMapping()
    public Iterable tvShows() {
        return tvShowRepository.findAll();
    }

    @GetMapping("/{id}")
    public TvShow getTvShow(@PathVariable Long id) {
        return tvShowRepository.findOne(id);
    }

    @GetMapping("/{id}/seasons")
    public Iterable<Season> getTvShowSeasons(@PathVariable Long id) {
        return seasonRepository.findByTvShowId(id);
    }

    @GetMapping("/{tvShowId}/seasons/{seasonId}")
    public Season getTvShowSeason(@PathVariable Long tvShowId, @PathVariable Long seasonId) {
        return seasonRepository.findByTvShowIdAndId(tvShowId, seasonId);
    }

    @GetMapping("/{tvShowId}/seasons/{seasonId}/episodes")
    public Iterable<Episode> getTvShowSeasonEpisodes(@PathVariable Long tvShowId, @PathVariable Long seasonId) {
        return episodeRepository.findBySeasonTvShowIdAndSeasonId(tvShowId, seasonId);
    }

    @GetMapping("/{id}/actors")
    public Iterable<Actor> getTvShowActors(@PathVariable Long id) {
        return actorRepository.findByTvShows_id(id);
    }

    @GetMapping("/{tvShowId}/actors/{actorId}")
    public Actor getTvShowActors(@PathVariable Long tvShowId, @PathVariable Long actorId) {
        return actorRepository.findByIdAndTvShows_id(actorId, tvShowId);
    }

    @GetMapping("/{tvShowId}/rating")
    public AverageRating getTvShowRating(@PathVariable Long tvShowId) {
        return voteRepository.findTvShowAverageRating(tvShowId);
    }
}
