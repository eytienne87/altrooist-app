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
    "#{distance} km from <span class='badge badge-secondary'>#{location.name}</span>".html_safe
  end
end
