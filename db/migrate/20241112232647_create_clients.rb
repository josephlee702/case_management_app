class CreateClients < ActiveRecord::Migration[7.1]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.string :address
      t.string :city
      t.string :state
      t.string :zip_code
      t.integer :gender
      t.date :DOB
      t.string :emergency_contact_name
      t.string :emergency_contact_phone
      t.string :drivers_license_#
      t.string :insurance
      t.text :notes

      t.timestamps
    end
  end
end
