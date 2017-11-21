package com.cdue.tvshows.repository;

import com.cdue.tvshows.model.TvShow;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TvShowRepository extends CrudRepository<TvShow, Long> {
    Iterable<TvShow> findByActors_id(Long id);
}

