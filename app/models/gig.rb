class Gig < ActiveRecord::Base
  has_many :bookings
  has_many :users, through: :bookings
  belongs_to :venue
  belongs_to :artist
  belongs_to :genre
  validates :name, uniqueness: true
  validates :image, presence: true
  validates :description, presence: true

  def self.search(search)
    where("name || description LIKE ?", "%#{search}%") 
  end

end
