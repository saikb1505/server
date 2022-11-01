class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees, id: :uuid do |t|
      t.string :client_id
      t.string :location_id
      t.string :department_id
      t.string :name
      t.string :email
      t.string :mobile
      t.string :reporting_id
      t.string :designation
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :country
      t.integer :status

      t.timestamps
    end
  end
end
