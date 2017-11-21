package com.cdue.tvshows.repository;

import com.cdue.tvshows.model.AverageRating;
import com.cdue.tvshows.model.Vote;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface VoteRepository extends CrudRepository<Vote, Long> {

    @Query(value = "select new com.cdue.tvshows.model.AverageRating(avg(v.nbStars), count(v), v.tvShow) from Vote v where v.tvShow.id = ?1 group by v.tvShow.id")
    AverageRating findTvShowAverageRating(Long tvShowId);
}

