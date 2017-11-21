package com.cdue.tvshows.rest.controller;

import com.cdue.tvshows.model.Actor;
import com.cdue.tvshows.model.TvShow;
import com.cdue.tvshows.repository.ActorRepository;
import com.cdue.tvshows.repository.TvShowRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/actors")
public class ActorController {

    private final ActorRepository actorRepository;
    private final TvShowRepository tvShowRepository;

    public ActorController(ActorRepository actorRepository, TvShowRepository tvShowRepository) {
        this.actorRepository = actorRepository;
        this.tvShowRepository = tvShowRepository;
    }

    @GetMapping()
    public Iterable<Actor> tvShows() {
        return actorRepository.findAll();
    }

    @GetMapping("/{id}")
    public Actor getActor(@PathVariable Long id) {
        return actorRepository.findOne(id);
    }

    @GetMapping("/{id}/tvshows")
    public Iterable<TvShow> getActorTvShows(@PathVariable Long id) {
        return tvShowRepository.findByActors_id(id);
    }
}
