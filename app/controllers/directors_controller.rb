class DirectorsController < ApplicationController

  def index
    render({ :template => "director_templates/index.html.erb" })
  end

  def director_details
    @director_id = params.fetch("an_id").to_i
    @details = Director.where({ :id => @director_id}).at(0)

    render({ :template => "director_templates/director_details.html.erb" })
  end

  def youngest
    @youngest = Director.where.not({ :dob => nil}).order({ :dob => :desc }).at(0)
    
    render({ :template => "director_templates/youngest.html.erb" })
  end

  def eldest
    @oldest = Director.where.not({ :dob => nil}).order({ :dob => :asc }).at(0)

    render({ :template => "director_templates/eldest.html.erb" })
  end

end
