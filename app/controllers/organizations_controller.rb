class OrganizationsController < ApplicationController
  before_action :set_org, only: [:show]

  def curated
    @curated = Organization.all
  end

  def show
  end

  private

  def set_org
    @org = Organization.find(params[:id])
  end
end
