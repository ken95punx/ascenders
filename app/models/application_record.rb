class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

	def player
		player = Player.find_by(id: self.player_id)
		return player.name
	end
end
