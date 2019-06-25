class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name, null: false, index: true
      t.integer :price, null: false
      t.integer :condition, null: false
      t.integer :charge, null: false
      t.date :buyday
      t.integer :status, null: false 
      t.integer :category
      t.integer :user_id, null: false, foreign_key: true
      t.string :text, null: false
      t.integer :place, null: false
      t.integer :limit, null: false 
      t.timestamps
    end
  end
end
