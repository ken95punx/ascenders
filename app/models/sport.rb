class Sport < ApplicationRecord
  has_many :players, dependent: :destroy
  has_many :movies, dependent: :destroy
  has_many :articles, dependent: :destroy

  mount_uploader :image, ImageUploader
end
