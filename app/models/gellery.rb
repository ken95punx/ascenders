class Gellery < ApplicationRecord
  belongs_to :player

  mount_uploader :image, ImageUploader
end
