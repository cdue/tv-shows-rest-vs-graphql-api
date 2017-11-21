package com.cdue.tvshows.model;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "episode")
public class Episode {

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

    public Episode() {
    }

    public Episode(String title, String description, Integer numberInSeason, Season season) {
        this.title = title;
        this.description = description;
        this.numberInSeason = numberInSeason;
        this.season = season;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getNumberInSeason() {
        return numberInSeason;
    }

    public void setNumberInSeason(Integer numberInSeason) {
        this.numberInSeason = numberInSeason;
    }

    public Season getSeason() {
        return season;
    }

    public void setSeason(Season season) {
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
