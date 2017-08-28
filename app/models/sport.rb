class Sport < ApplicationRecord
  has_many :players
  has_many :movies
  has_many :articles

  mount_uploader :image, ImageUploader
end
