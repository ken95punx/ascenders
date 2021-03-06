class Player < ApplicationRecord
  has_many :movies, dependent: :destroy
  has_many :articles, dependent: :destroy
  has_many :gelleries, dependent: :destroy
  belongs_to :sport
  belongs_to :administrator

  has_many :friend_relationships, foreign_key: "follower_id", dependent: :destroy
  has_many :followed_players, through: :friend_relationships, source: :followed

  mount_uploader :profile_image, ImageUploader
  mount_uploader :cover_image, ImageUploader
end
