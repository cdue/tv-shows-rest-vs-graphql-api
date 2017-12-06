package com.cdue.tvshows.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.io.Serializable;

@Getter
@Setter
@NoArgsConstructor
public class AverageRating implements Serializable {

    private Double averageRating;
    private Long nbVotes;

    // @JsonIgnore
    private TvShow tvShow;

    public AverageRating(Double averageRating, Long nbVotes, TvShow tvShow) {
        this.averageRating = averageRating;
        this.nbVotes = nbVotes;
        this.tvShow = tvShow;
    }
}
