package com.cdue.tvshows.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.io.Serializable;

@Entity
@Table(name = "episode")
@Getter
@Setter
@NoArgsConstructor
public class Episode implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    private String title;

    @Lob
    private String description;

    private Integer numberInSeason;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "season_id")
    @JsonIgnore
    private Season season;

    public Episode(String title, String description, Integer numberInSeason, Season season) {
        this.title = title;
        this.description = description;
        this.numberInSeason = numberInSeason;
        this.season = season;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Episode episode = (Episode) o;

        return id != null && id != episode.id;
    }

    @Override
    public int hashCode() {
        return id.hashCode();
    }
}
