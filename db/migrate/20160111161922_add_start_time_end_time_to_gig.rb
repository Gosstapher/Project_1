class AddStartTimeEndTimeToGig < ActiveRecord::Migration
  def change
    add_column :gigs, :start_time, :datetime
    add_column :gigs, :end_time, :datetime
  end
end
