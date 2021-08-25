class ProfilesController < ApplicationController
  def edit
    @profile = current_user
  end

  def update
    @profile = current_user
    current_user.update(strong_params)
    if current_user.update(strong_params)
      redirect_to organizations_curated_path
    else
      render :edit
    end
  end

  def strong_params
    params.require(:user).permit(:locations_attributes, :interests_attributes)
  end

end
