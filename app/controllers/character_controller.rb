class CharacterController < ApplicationController
  require "stat_service"
  def index
    @character = Character.all
  end
  def show
    @character = Character.find(params[:id])
  end
  def new
    @character = Character.new
  end
  def create
    @character = Character.new(character_params)
    @character.save
    redirect_to @character
  end
  def edit
    @character = Character.find(params[:id])
  end
  def update
    @character = Character.find(params[:id])
    @character.update (character_params)
    redirect_to @character
  end
end

private

  def character_params
    params.require(:character).permit(:str,:dex,:con,:int, :wis, :cha, :cname, :pname, :prof, :race, :exp, :alignment, :religion, :pofo, :gender, :hair, :eyes, :height, :weight)
  end
