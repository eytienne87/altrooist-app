class CuratedOrganization
  attr_reader :location, :organization

  def initialize(params)
    @organization = params[:organization]
    @location = params[:location]
  end

  def distance
    location.distance_to(organization).ceil(1)
  end

  def humanize_distance
    "#{distance} km from your #{location.name}"
  end
end
