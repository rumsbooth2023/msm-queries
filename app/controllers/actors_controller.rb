class ActorsController < ApplicationController

  def index
    render({ :template => "actor_templates/index.html.erb" })
  end
  
  def actor_details
    @actor_id = params.fetch("an_id").to_i
    @details = Actor.where({ :id => @actor_id}).at(0)

    render({ :template => "actor_templates/actor_details.html.erb" })
  end
end
