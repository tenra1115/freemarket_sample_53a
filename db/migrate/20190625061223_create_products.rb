class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name, null: false, index: true
      t.integer :price, null: false
      t.integer :condition, null: false
      t.integer :charge, null: false
      t.date :buyday
      t.integer :status, null: false 
      t.string :text, null: false
      t.integer :place, null: false
      t.integer :limit, null: false 
      t.integer :buyer_id,foreign_key: true
      t.integer :saler_id
      t.timestamps
    end
  end
end
