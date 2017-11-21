package com.cdue.tvshows.model;

import com.fasterxml.jackson.annotation.JsonIgnore;

public class AverageRating {

    private Double averageRating;
    private Long nbVotes;

    @JsonIgnore
    private TvShow tvShow;

    public AverageRating() {
    }

    public AverageRating(Double averageRating, Long nbVotes, TvShow tvShow) {
        this.averageRating = averageRating;
        this.nbVotes = nbVotes;
        this.tvShow = tvShow;
    }

    public Double getAverageRating() {
        return averageRating;
    }

    public void setAverageRating(Double averageRating) {
        this.averageRating = averageRating;
    }

    public Long getNbVotes() {
        return nbVotes;
    }

    public void setNbVotes(Long nbVotes) {
        this.nbVotes = nbVotes;
    }

    public TvShow getTvShow() {
        return tvShow;
    }

    public void setTvShow(TvShow tvShow) {
        this.tvShow = tvShow;
    }
}
