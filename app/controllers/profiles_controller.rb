class ProfilesController < ApplicationController
  def edit
    @profile = current_user
  end

  def update
    raise
    @address = params[:user][:locations_attributes]["0"][:address]
    @interest = params[:user][:interests_attributes]['0'][:category]
  end
end
