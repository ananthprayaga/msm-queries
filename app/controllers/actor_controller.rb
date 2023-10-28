class ActorController < ApplicationController
  def show_all
    @actors = Actor.all
    render({:template => "actor/home"})
  end

  def details
    actor_id = params.fetch("actor_id")
    @the_actor = Actor.where({:id => actor_id}).first
    @matching_characters = Character.where({:actor_id => actor_id})
    render({:template => "actor/details"})
  end 
end
