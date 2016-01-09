class AddVenueIdArtistIdGenreIdToGig < ActiveRecord::Migration
  def change
    add_column :gigs, :venue_id, :integer
    add_column :gigs, :artist_id, :integer
    add_column :gigs, :genre_id, :integer
  end
end
