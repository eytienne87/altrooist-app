class User < ApplicationRecord
  has_many :locations
  has_many :interests
  has_many :categories, through: :interests
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  accepts_nested_attributes_for :locations, :interests
end
