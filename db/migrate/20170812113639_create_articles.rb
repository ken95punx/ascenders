class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :media
      t.string :image_link
      t.string :original_link
      t.integer :player_id

      t.timestamps
    end
  end
end
