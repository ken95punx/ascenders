class Sport < ApplicationRecord
  default_scope -> { order(created_at: :desc) }

  has_many :players
  has_many :movies
  has_many :articles

  mount_uploader :image, ImageUploader
end
