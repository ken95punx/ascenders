class Player < ApplicationRecord
  def sport
    sport = Sport.find_by(id: self.sports_id)
    return sport.name
  end
end
