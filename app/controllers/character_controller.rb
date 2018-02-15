class CharacterController < ApplicationController
  def index
    @stats = Stat.all
  end
  def show

  end
end
