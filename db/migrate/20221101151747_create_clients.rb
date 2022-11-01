class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients, id: :uuid do |t|
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
      t.integer :status

      t.timestamps
    end
  end
end
