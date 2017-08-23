class Player < ApplicationRecord
  has_many :movies;
  has_many :articles;

  def sport
    sport = Sport.find_by(id: self.sports_id)
    return sport.name
  end
end
