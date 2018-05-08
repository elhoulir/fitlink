class BookedGymSession < ApplicationRecord
  belongs_to :user
  belongs_to :gym_session
end
