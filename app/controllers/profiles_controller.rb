class ProfilesController < ApplicationController
  def edit
    @profile = current_user
  end

  def update
    raise
  end
end
