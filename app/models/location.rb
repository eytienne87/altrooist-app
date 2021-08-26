class Location < ApplicationRecord
  belongs_to :user

  validates :address, :name, presence: true
end
