class AddCapacityToGig < ActiveRecord::Migration
  def change
    add_column :gigs, :capacity, :integer
  end
end
