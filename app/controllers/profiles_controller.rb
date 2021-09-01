class ProfilesController < ApplicationController
  before_action :set_profile, except: :strong_params

  def show
    @locations = @profile.locations
    @interests = @profile.interests
  end

  def edit
    @profile.interests.build unless @profile.interests.any?
    @profile.locations.build unless @profile.locations.any?
  end

  def update
    if current_user.update(strong_params)
      redirect_to curated_path
    else
      render :edit
    end
  end

  private

  def set_profile
    @profile = current_user
  end

  def strong_params
    params.require(:user).permit(
      locations_attributes: [:id, :address, :name, :_destroy],
      interests_attributes: [:id, :category_id, :_destroy]
    )
  end
end
