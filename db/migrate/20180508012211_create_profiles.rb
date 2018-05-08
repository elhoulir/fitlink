class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :contact_number
      t.date :date_of_birth
      t.string :address
      t.string :drivers_license
      t.text :drivers_license_image_data
      t.text :photo_data
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
