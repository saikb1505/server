class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations, id: :uuid do |t|
      t.string :client_id
      t.string :name
      t.string :phone_1
      t.string :phone_2
      t.string :email_1
      t.string :email_2
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :country
      t.string :lat
      t.string :lon
      t.integer :status

      t.timestamps
    end
  end
end
