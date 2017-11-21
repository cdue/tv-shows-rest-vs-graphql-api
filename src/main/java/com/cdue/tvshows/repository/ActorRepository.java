package com.cdue.tvshows.repository;

import com.cdue.tvshows.model.Actor;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ActorRepository extends CrudRepository<Actor, Long> {
    Iterable<Actor> findByTvShows_id(Long id);

    Actor findByIdAndTvShows_id(Long actorId, Long tvShowId);
}

