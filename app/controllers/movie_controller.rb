class MovieController < ApplicationController
  def show_all
    @movies = Movie.all
    render({:template => "movie/home"})
  end

  def details
    movie_id = params.fetch("movie_id")
    @the_movie = Movie.where({:id => movie_id}).first
    render({:template => "movie/details"})
  end
end
