class Player < ApplicationRecord
  has_many :movies
  has_many :articles
  belongs_to :sport

  mount_uploader :profile_image, ImageUploader
  mount_uploader :cover_image, ImageUploader
end
