class Movie < ApplicationRecord
  belongs_to :player
  belongs_to :sport
end
