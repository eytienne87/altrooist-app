class Organization < ApplicationRecord
  belongs_to :category

  geocoded_by :address
end
