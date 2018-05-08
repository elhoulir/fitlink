class CreateGyms < ActiveRecord::Migration[5.1]
  def change
    create_table :gyms do |t|
      t.string :name
      t.text :description
      t.string :abn
      t.string :address
      t.string :contact_number
      t.text :image_data
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
