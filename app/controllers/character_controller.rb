class CharacterController < ApplicationController
  def index
    @stats = Stat.all
  end
end
