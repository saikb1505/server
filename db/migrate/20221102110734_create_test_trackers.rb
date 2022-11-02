class CreateTestTrackers < ActiveRecord::Migration[7.0]
  def change
    create_table :test_trackers, id: :uuid do |t|
      t.string :employee_id
      t.string :department_id
      t.string :location
      t.string :lat
      t.string :lon
      t.string :battery
      t.string :signal_strength

      t.timestamps
    end
  end
end
