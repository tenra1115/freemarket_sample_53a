class CreateBuyHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :buy_histories do |t|
      t.references :user, null: false, foreign_key: true, index: true
      t.references :product, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
