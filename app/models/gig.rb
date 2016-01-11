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




  def self.gigs_at_venue(venue_id_input)
      where(venue_id:venue_id_input)
  end

  def gig_overlaps?(venue_id)
    Gig.gigs_at_venue(venue_id).all? do |g|
      (g.start_time <= end_time) and (start_time >= g.end_time)  
      end
    end
end