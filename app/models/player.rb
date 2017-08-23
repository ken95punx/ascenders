class Player < ApplicationRecord
  has_many :movies
  has_many :articles
  belongs_to :sport
end
