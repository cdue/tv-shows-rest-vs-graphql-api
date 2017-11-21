package com.cdue.tvshows.model;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "season")
public class Season {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    private String title;

    private int releaseYear;

    @Lob
    private String description;

    private String posterPath;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "tv_show_id")
    @JsonIgnore
    private TvShow tvShow;

    @OneToMany(
            mappedBy = "season",
            cascade = CascadeType.ALL,
            orphanRemoval = true
    )
    private List<Episode> episodes = new ArrayList<>();

    public Season() {
    }

    public Season(String title, int releaseYear, String description, String posterPath, TvShow tvShow) {
        this.title = title;
        this.releaseYear = releaseYear;
        this.description = description;
        this.posterPath = posterPath;
        this.tvShow = tvShow;
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

    public int getReleaseYear() {
        return releaseYear;
    }

    public void setReleaseYear(int releaseYear) {
        this.releaseYear = releaseYear;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPosterPath() {
        return posterPath;
    }

    public void setPosterPath(String posterPath) {
        this.posterPath = posterPath;
    }

    public TvShow getTvShow() {
        return tvShow;
    }

    public void setTvShow(TvShow tvShow) {
        this.tvShow = tvShow;
    }

    /*public List<Episode> getEpisodes() {
        return episodes;
    }

    public void setEpisodes(List<Episode> episodes) {
        this.episodes = episodes;
    }*/

    public void addEpisode(Episode episode) {
        episodes.add(episode);
        episode.setSeason(this);
    }

    public void removeEpisode(Episode episode) {
        episodes.remove(episode);
        episode.setSeason(null);
    }

    @Override
    public String toString() {
        return "Season{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", releaseYear=" + releaseYear +
                ", description='" + description + '\'' +
                ", posterPath='" + posterPath + '\'' +
                ", tvShow=" + tvShow +
                ", episodes=" + episodes +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Season season = (Season) o;

        return id != null ? id.equals(season.id) : season.id == null;
    }

    @Override
    public int hashCode() {
        return id.hashCode();
    }
}
