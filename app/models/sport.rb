class Sport < ApplicationRecord
  has_many :players
  has_many :movies
  has_many :players

  mount_uploader :image, ImageUploader
end
