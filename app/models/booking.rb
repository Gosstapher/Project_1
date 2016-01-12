class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :gig
  validates :ticket, numericality: true
end
