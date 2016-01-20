class Gig < ActiveRecord::Base
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  belongs_to :venue
  belongs_to :artist
  belongs_to :genre
  validates :name, uniqueness: true
  validates :image, presence: true
  validates :description, presence: true
  validates :capacity , presence: true

# ------------ based heavily on collaboration with Andrew Insley ----- #
  scope :venue_check, -> (v_id){where("venue_id == ?", v_id)}
  scope :finish_after,  -> (start_time){where("end_time > ?", start_time)}
  scope :start_before, -> (end_time){where("start_time < ?", end_time)}
  scope :overlap_check, -> (v_id,start_time,end_time){venue_check(v_id).finish_after(start_time).start_before(end_time)}
# -------------------------------------------------------------------- #

  def self.search(search)
    gigs = Gig.where('name || description LIKE ?', "%#{search}%")
    artists = Artist.where('name LIKE ?', "%#{search}%")
    venues = Venue.where('name LIKE ?', "%#{search}%")
    (artists.map{|a| a.gigs}.flatten + venues.map{|v| v.gigs}.flatten + gigs.flatten).uniq
  end

  def self.get_random_gigs
    gigs = Gig.all
    gig_ids = gigs.map {|g| g.id}
    gig_ids.sample(4)

  end

  def tickets_sold
    tickets = self.bookings.map do |booking|
      booking.ticket
    end
    tickets.inject(0){|sum, x| sum += x}
  end

  def tickets_left
    self.capacity - self.tickets_sold
  end

  def list
    gigs = Gig.all
    gigs.each do |g|
      g.image
    end
  end

end