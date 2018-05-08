class ChangeGymSessionIdToGymId < ActiveRecord::Migration[5.1]
  def change
    rename_column :booked_gym_sessions, :gym_session_id, :gym_id
  end
end
