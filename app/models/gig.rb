class Gig < ActiveRecord::Base
  has_many :bookings
  has_many :users, through: :bookings
  belongs_to :venue
  belongs_to :artist
  belongs_to :genre
end
