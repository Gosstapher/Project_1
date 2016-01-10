class Genre < ActiveRecord::Base
  has_many :gigs
  validates :name, uniqueness: true
end
