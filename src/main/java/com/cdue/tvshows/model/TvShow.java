package com.cdue.tvshows.model;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "tv_show")
public class TvShow {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    private String title;

    @Lob
    private String description;

    private String posterPath;

    @OneToMany(
            mappedBy = "tvShow",
            cascade = CascadeType.ALL,
            orphanRemoval = true
    )
    @JsonIgnore
    private List<Season> seasons = new ArrayList<>();

    @OneToMany(
            mappedBy = "tvShow",
            cascade = CascadeType.ALL,
            orphanRemoval = true
    )
    @JsonIgnore
    private List<Vote> votes = new ArrayList<>();

    @ManyToMany(cascade = {
            CascadeType.PERSIST,
            CascadeType.MERGE
    })
    @JoinTable(name = "tv_show_actor",
            joinColumns = @JoinColumn(name = "tv_show_id"),
            inverseJoinColumns = @JoinColumn(name = "actor_id")
    )
    @JsonIgnore
    private List<Actor> actors = new ArrayList<>();

    public TvShow() {
    }

    public TvShow(String title, String description, String posterPath) {
        this.title = title;
        this.description = description;
        this.posterPath = posterPath;
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

    public String getPosterPath() {
        return posterPath;
    }

    public void setPosterPath(String posterPath) {
        this.posterPath = posterPath;
    }

    public List<Season> getSeasons() {
        return seasons;
    }

    public void setSeasons(List<Season> seasons) {
        this.seasons = seasons;
    }

    public List<Vote> getVotes() {
        return votes;
    }

    public void setVotes(List<Vote> votes) {
        this.votes = votes;
    }

    public List<Actor> getActors() {
        return actors;
    }

    public void setActors(List<Actor> actors) {
        this.actors = actors;
    }

    public void addSeason(Season season) {
        seasons.add(season);
        season.setTvShow(this);
    }

    public void removeSeason(Season season) {
        seasons.remove(season);
        season.setTvShow(null);
    }

    public void addVote(Vote vote) {
        votes.add(vote);
        vote.setTvShow(this);
    }

    public void removeVote(Vote vote) {
        votes.remove(vote);
        vote.setTvShow(null);
    }

    public void addActor(Actor actor) {
        actors.add(actor);
        actor.getTvShows().add(this);
    }

    public void removeActor(Actor actor) {
        actors.remove(actor);
        actor.getTvShows().remove(this);
    }

    @Override
    public String toString() {
        return "TvShow{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", description='" + description + '\'' +
                ", posterPath='" + posterPath + '\'' +
                ", seasons=" + seasons +
                ", votes=" + votes +
                ", actors=" + actors +
                '}';
    }
}
