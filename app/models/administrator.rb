class Administrator < ActiveRecord::Base
  has_many :players
  authenticates_with_sorcery!
<<<<<<< HEAD
  has_secure_password
=======
>>>>>>> eb663406f76b632b4afcef86367bd126b942239c

  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

<<<<<<< HEAD
  validates :name, presence: true
  validates :email, presence: true
=======
>>>>>>> eb663406f76b632b4afcef86367bd126b942239c
  validates :email, uniqueness: true
end