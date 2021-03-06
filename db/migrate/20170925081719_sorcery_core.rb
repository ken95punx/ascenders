class SorceryCore < ActiveRecord::Migration[5.1]
  def change
    create_table :administrators do |t|
      t.string :name,            :null => false
      t.string :email,            :null => false
      t.string :password_digest
      t.string :salt

      t.timestamps                :null => false
    end

    add_index :administrators, :email, unique: true
  end
end

