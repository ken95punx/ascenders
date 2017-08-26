class ChangePlayerImageCoverImageToPlayers02 < ActiveRecord::Migration[5.1]
  def change
    remove_column :players, :profile_image, :text
    remove_column :players, :cover_image, :text
    add_column :players, :profile_image, :string
    add_column :players, :cover_image, :string
  end
end
