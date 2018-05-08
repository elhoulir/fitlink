class Gym < ApplicationRecord
  belongs_to :user

  has_many :gym_sessions
  has_many :booked_gym_sessions

end
