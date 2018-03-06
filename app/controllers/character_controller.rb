class CharacterController < ApplicationController
  require "stat_service"
  def index
    @character = Character.all
  end
  def show
    @character = Character.find(params[:id])
  end
  def edit
    @character = Character.find(params[:id])
  end
  def update
    @character = Character.find(params[:id])
    character_params = params.require(:character).permit(:str,:dex,:con,:int, :wis, :cha, :cname, :pname, :prof, :race, :level, :exp, :alignment, :religion, :pofo, :gender, :hair, :eyes, :height, :weight)
    @character.update (character_params)
    redirect_to @character
  end
end
