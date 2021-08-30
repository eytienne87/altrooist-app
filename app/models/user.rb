class User < ApplicationRecord
  has_many :locations
  has_many :interests
  has_many :categories, through: :interests
  has_many :journal_entries
  has_many :organizations, -> { distinct }, through: :journal_entries
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  accepts_nested_attributes_for :locations,
                                :interests,
                                reject_if: :all_blank,
                                allow_destroy: true

  def profile_pending?
    interests.empty? || locations.empty?
  end
end
