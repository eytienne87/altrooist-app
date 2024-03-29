class OrganizationsController < ApplicationController
  before_action :set_org, only: [:show]

  def curated
    if current_user.profile_pending?
      redirect_to edit_profile_path, alert: "We need to know more before showing organizations around you."
    end

    # @curated = Organization.all
    # TODO Need to get user's locations
    locations = current_user.locations
    # Then for each location:
    # Get Geocoding on address and save it to the location table (latitude and longitude)
    #      Is this done automatically by geocoder gem when saving locations?
    # Now get top 5 organizations closest to each location.
    @curated_organizations = []
    locations.each do |location|
      organizations_near_location = Organization.where(category: current_user.categories).near(location,30)
      organizations_near_location.each do |org|
        @curated_organizations << CuratedOrganization.new(organization: org, location: location)
      end
    end
    # @curated_organizations = @curated_organizations.sort_by(&:distance).uniq(&:organization).first(5)
    @curated_organizations.sort_by!(&:distance).uniq!(&:organization)
    # @curated_organizations.sort_by!(&:distance)
  end

  def show
    @first_entry = @org.journal_entries.where(user: current_user).empty?
  end

  def my_organizations
    @my_organizations = current_user.organizations
  end

  private

  def set_org
    @org = Organization.find(params[:id])
  end
end
