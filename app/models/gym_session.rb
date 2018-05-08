class GymSession < ApplicationRecord
  belongs_to :user

  belongs_to :gym
  

end
