class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :contact_number
      t.string :date_of_birth
      t.string :address
      t.string :drivers_license
      t.text :license_image_data
      t.text :photo_data

      t.timestamps
    end
  end
end
