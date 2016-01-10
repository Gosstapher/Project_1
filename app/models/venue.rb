class Venue < ActiveRecord::Base
  has_many :gigs
  validates :name, uniqueness: true
  validates :location, uniqueness: true
  validates :image, uniqueness: true
  validates :description, presence: true
end
