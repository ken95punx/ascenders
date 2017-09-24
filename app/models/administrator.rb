class Administrator < ApplicationRecord
  has_many :players

  authenticates_with_sorcery!
end
