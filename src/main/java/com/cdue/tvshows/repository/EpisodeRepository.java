package com.cdue.tvshows.repository;

import com.cdue.tvshows.model.Episode;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EpisodeRepository extends CrudRepository<Episode, Long> {

    Iterable<Episode> findBySeasonTvShowIdAndSeasonId(Long tvShowId, Long seasonId);

    Iterable<Episode> findBySeasonId(Long id);
}

