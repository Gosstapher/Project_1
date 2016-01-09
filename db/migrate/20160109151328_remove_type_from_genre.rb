class RemoveTypeFromGenre < ActiveRecord::Migration
  def change
    remove_column :genres, :type, :string
  end
end
