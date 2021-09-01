class Organization < ApplicationRecord
  belongs_to :category
  has_many :journal_entries

  geocoded_by :address
end
