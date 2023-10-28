class DirectorController < ApplicationController
  def show_all
    @directors = Director.all
    render({:template => "director/home"})
  end

  def details
    director_id = params.fetch("director_id")
    @the_director = Director.where({:id => director_id}).first
    @films = Movie.where({:director_id => director_id}).all
    render({:template => "director/details"})
  end

  def youngest
    @youngest_director = Director.where.not({ :dob => nil }).order({:dob => "desc"}).first
    render(template: "director/youngest")
  end

  def eldest
    @eldest_director = Director.where.not({ :dob => nil }).order({:dob => "asc"}).first
    render(tempalte: "director/eldest")
  end
end
