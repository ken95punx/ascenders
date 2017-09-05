class Gellery < ApplicationRecord
  default_scope -> { order(created_at: :desc) }

  belongs_to :player

  mount_uploader :image, ImageUploader
end
