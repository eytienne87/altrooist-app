class OrganizationsController < ApplicationController
  def curated
    @curated = Organization.all
  end
end
