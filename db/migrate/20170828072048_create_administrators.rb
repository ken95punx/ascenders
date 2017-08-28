class CreateAdministrators < ActiveRecord::Migration[5.1]
  def change
    create_table :administrators do |t|
      t.string :name
      t.string :login
      t.string :password

      t.timestamps
    end
  end
end
