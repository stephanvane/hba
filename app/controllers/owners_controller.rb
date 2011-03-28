class OwnersController < ApplicationController
  def show
    @owner = current_owner
  end
end
