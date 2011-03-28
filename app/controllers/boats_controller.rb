class BoatsController < ApplicationController
  
  before_filter :authenticate_admin!, :only => [:new, :create, :edit, :update]
  
  def index
    @all = Boat.select([:name, :slug]).all
    @boats = Boat.page params[:page]
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
    end
  end
  
  def show
    @boat = Boat.find_by_slug(params[:id])
  end
  
  def edit
    @boat = Boat.find_by_slug(params[:id])
  end
  
  def update
    @boat = Boat.find_by_slug(params[:id])
    if @boat.update_attributes(params[:boat])
      redirect_to @boat
    else
      render :edit
    end
  end
end
