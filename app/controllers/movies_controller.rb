class MoviesController < ApplicationController

  def index
    render({ :template => "movie_templates/index.html.erb" })
  end

  def movie_details
    @movie_id = params.fetch("an_id").to_i
    @details = Movie.where({ :id => @movie_id}).at(0)
    @director = Director.where({ :director_id => @director_id})

    render({ :template => "movie_templates/movie_details.html.erb" })
  end
end
