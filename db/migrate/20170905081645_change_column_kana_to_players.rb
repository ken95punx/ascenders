class ChangeColumnKanaToPlayers < ActiveRecord::Migration[5.1]
  def change
    remove_column :players, :kana_name, :string
    add_column :players, :hiragana_name, :string
    add_column :players, :katakana_name, :string
  end
end
