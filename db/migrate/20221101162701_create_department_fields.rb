class CreateDepartmentFields < ActiveRecord::Migration[7.0]
  def change
    create_table :department_fields, id: :uuid do |t|
      t.string :client_id
      t.string :location_id
      t.string :department_id
      t.string :name
      t.string :type
      t.string :required
      t.string :status
      t.string :validations

      t.timestamps
    end
  end
end
