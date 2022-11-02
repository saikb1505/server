class AddDatetimeToTracker < ActiveRecord::Migration[7.0]
  def change
    remove_column :trackers, :date
    remove_column :trackers, :time

    add_column :trackers, :located_at, :datetime
  end
end
