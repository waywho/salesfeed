class ChangeColumnsForCategory < ActiveRecord::Migration
  def change
    remove_column :categories, :subcategory_id, :integer
    add_reference :subcategories, :category, index: true
  end
end
