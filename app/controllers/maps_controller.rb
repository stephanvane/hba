class MapsController < ApplicationController
  def show
    @boats = Boat.all
  end
end
