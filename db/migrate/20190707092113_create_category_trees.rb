class CreateCategoryTrees < ActiveRecord::Migration[5.2]
  def change
    create_table :category_trees do |t|
      t.integer :category_tree_id
      t.integer :ancester_category_id
      t.integer :descendent_category_id

      t.timestamps
    end
  end
end
