package com.cdue.tvshows.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "season")
@Getter
@Setter
@NoArgsConstructor
public class Season implements Serializable {

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

    public Season(String title, int releaseYear, String description, String posterPath, TvShow tvShow) {
        this.title = title;
        this.releaseYear = releaseYear;
        this.description = description;
        this.posterPath = posterPath;
        this.tvShow = tvShow;
    }

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
