class Article < ApplicationRecord
  default_scope -> { order(created_at: :desc) }

  belongs_to :player
  belongs_to :sport
end
