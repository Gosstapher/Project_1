class Artist < ActiveRecord::Base
  has_many :gigs
  validates :name, uniqueness: true
end
