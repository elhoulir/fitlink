class Gym < ApplicationRecord
  include ImageUploader::Attachment.new(:image)
  belongs_to :user

  has_many :gym_sessions, dependent: :destroy
  has_many :booked_gym_sessions, dependent: :destroy
  

end

