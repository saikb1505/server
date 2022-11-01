class CreateTrackers < ActiveRecord::Migration[7.0]
  def change
    create_table :trackers, id: :uuid do |t|
      t.string :employee_id
      t.date :date
      t.time :time
      t.string :battery
      t.string :signal_strength
      t.string :lat
      t.string :lon

      t.timestamps
    end
  end
end
