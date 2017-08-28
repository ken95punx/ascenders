class Player < ApplicationRecord
  has_many :movies
  has_many :articles
  has_many :gelleries
  belongs_to :sport
  belongs_to :administrator

  mount_uploader :profile_image, ImageUploader
  mount_uploader :cover_image, ImageUploader
end
