class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :nickname, null: false, index: true
      t.string :email, null: false 
      t.string :name, null: false, index: true
      t.integer :birthday, null: false 
      t.string :icon
      t.string :intro_text
      t.integer :rating
      t.timestamps
    end
  end
end

