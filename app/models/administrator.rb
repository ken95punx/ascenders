class Administrator < ApplicationRecord
  authenticates_with_sorcery!
  has_secure_password
end
