class ChangePlayerImageCoverImageToPlayers < ActiveRecord::Migration[5.1]
  def change
    remove_column :players, :profile_image, :string
    remove_column :players, :cover_image, :string
    add_column :players, :profile_image, :text
    add_column :players, :cover_image, :text
  end
end
