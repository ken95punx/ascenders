class Sport < ApplicationRecord
  has_many :players

  mount_uploader :image, ImageUploader
end
