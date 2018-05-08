class CreateGymSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :gym_sessions do |t|
      t.references :user, foreign_key: true
      t.integer :day_of_week
      t.time :time_from
      t.time :time_until
      t.integer :hourly_price
      t.integer :weeks_in_advance

      t.timestamps
    end
  end
end
