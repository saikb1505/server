class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks, id: :uuid do |t|
      t.string :department_id
      t.string :name
      t.string :description
      t.string :etc
      t.string :data
      t.integer :status

      t.timestamps
    end
  end
end
