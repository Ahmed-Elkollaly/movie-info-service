package com.elkolaly.movieinfoservice.models;

public class Movie {
	private String movieId;
	private String name;
	private String descripton;
	
	
	
	public Movie() {
		
	}
	public Movie(String movieId, String name,String description) {
		super();
		this.movieId = movieId;
		this.name = name;
		this.descripton = description;
	}
	public String getMovieId() {
		return movieId;
	}
	public void setMovieId(String movieId) {
		this.movieId = movieId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescripton() {
		return descripton;
	}
	public void setDescripton(String descripton) {
		this.descripton = descripton;
	}
	
	

}

