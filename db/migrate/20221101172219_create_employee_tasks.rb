class CreateEmployeeTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :employee_tasks, id: :uuid do |t|
      t.string :employee_id
      t.string :task_id
      t.string :etc
      t.string :start_time
      t.string :end_time
      t.string :remarks
      t.integer :status

      t.timestamps
    end
  end
end
