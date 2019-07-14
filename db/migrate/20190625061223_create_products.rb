class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name, null: false, index: true
      t.integer :price, null: false
      t.string :condition, null: false
      t.string :charge, null: false
      t.date :buyday
      t.string :text, null: false
      t.string :place, null: false
      t.string :limit, null: false 
      t.integer :buyer_id,foreign_key: true
      t.integer :saler_id
      t.timestamps
    end
  end
end
