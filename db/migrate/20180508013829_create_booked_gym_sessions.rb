class CreateBookedGymSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :booked_gym_sessions do |t|
      t.references :user, foreign_key: true
      t.references :gym_session, foreign_key: true
      t.datetime :date_from
      t.datetime :date_until
      t.string :stripe_charge_id

      t.timestamps
    end
  end
end
