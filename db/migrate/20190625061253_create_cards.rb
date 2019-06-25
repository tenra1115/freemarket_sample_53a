class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.integer :number, null: false
      t.integer :cvc, null: false
      t.integer :exp_month, null: false
      t.integer :exp_year , null: false
      t.integer :user_id, null: false, foreign_key: true
      t.timestamps
    end
  end
end
