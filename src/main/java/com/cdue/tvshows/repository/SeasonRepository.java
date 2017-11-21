package com.cdue.tvshows.repository;

import com.cdue.tvshows.model.Season;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SeasonRepository extends CrudRepository<Season, Long> {

    Iterable<Season> findByTvShowId(Long id);

    Season findByTvShowIdAndId(Long tvShowId, Long seasonId);

    Iterable<Season> findByTvShowIdOrderByReleaseYearDesc(Long id);
}

