class ProfilesController < ApplicationController
  def edit
    @profile = current_user
    @profile.interests.build unless @profile.interests.any?
    @profile.locations.build unless @profile.locations.any?
  end

  def update
    @profile = current_user
    if current_user.update(strong_params)
      redirect_to organizations_curated_path
    else
      render :edit
    end
  end

  def strong_params
    params.require(:user).permit(
      locations_attributes: [:id, :address, :_destroy],
      interests_attributes: [:id, :category_id, :_destroy]
    )
  end
end
