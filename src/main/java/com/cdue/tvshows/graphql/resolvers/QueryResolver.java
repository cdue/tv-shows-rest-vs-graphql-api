package com.cdue.tvshows.graphql.resolvers;

import com.cdue.tvshows.model.Actor;
import com.cdue.tvshows.model.TvShow;
import com.cdue.tvshows.repository.ActorRepository;
import com.cdue.tvshows.repository.TvShowRepository;
import com.coxautodev.graphql.tools.GraphQLQueryResolver;
import org.springframework.stereotype.Component;

@Component
public class QueryResolver implements GraphQLQueryResolver {

    private final TvShowRepository tvShowRepository;
    private final ActorRepository actorRepository;

    public QueryResolver(TvShowRepository tvShowRepository, ActorRepository actorRepository) {
        this.tvShowRepository = tvShowRepository;
        this.actorRepository = actorRepository;
    }

    public Iterable<TvShow> getTvShows() {
        return tvShowRepository.findAll();
    }

    public TvShow getTvShow(Long id) {
        return tvShowRepository.findOne(id);
    }

    public Iterable<Actor> getActors() {
        return actorRepository.findAll();
    }
}
