class OwnersController < ApplicationController
  def new
    @owner = Owner.new
  end
  
  def create
    @owner = Owner.new(params[:owner])
    
    if @owner.save
      redirect_to @owner
    else
      render :new
    end
  end
  
  def show
    @owner = Owner.find(params[:id])
  end
  
  def index
    @owners = Owner.all
  end
  
  def edit
    @owner = Owner.find(params[:id])
  end
  
  def update
    @owner = Owner.find(params[:id])
    if @owner.update_attributes(params[:owner])
      redirect_to @owner
    else
      render :edit
    end
  end
end
