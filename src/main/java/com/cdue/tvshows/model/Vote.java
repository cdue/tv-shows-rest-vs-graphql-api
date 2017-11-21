package com.cdue.tvshows.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import java.io.Serializable;

@Entity
@Table(name = "vote")
@Getter
@Setter
@NoArgsConstructor
public class Vote implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "tv_show_id")
    @JsonIgnore
    private TvShow tvShow;

    @NotNull
    @Min(0)
    @Max(5)
    private Integer nbStars;

    public Vote(TvShow tvShow, Integer nbStars) {
        this.tvShow = tvShow;
        this.nbStars = nbStars;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Vote vote = (Vote) o;

        return id.equals(vote.id);
    }

    @Override
    public int hashCode() {
        return id.hashCode();
    }
}
