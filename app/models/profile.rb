class Profile < ApplicationRecord
  include ImageUploader::Attachment.new(:photo)
  belongs_to :user
end
