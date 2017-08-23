class Player < ApplicationRecord
  has_many :movies;

  def sport
    sport = Sport.find_by(id: self.sports_id)
    return sport.name
  end
end
