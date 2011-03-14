class BoatsController < ApplicationController
  def index
    @boats = Boat.all
  end
  
  def new
    @boat = Boat.new
  end
  
  def create
    @boat = Boat.new params[:boat]
    if @boat.save
      redirect_to :action => :index
    else
      render :new
      puts @boat.errors
    end
  end
  
  def show
    @boat = Boat.find_by_slug(params[:id])
  end
end
