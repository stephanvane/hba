class OwnersController < ApplicationController
  before_filter :authenticate_owner!
  
  def home
    @owner = current_owner
  end
end
