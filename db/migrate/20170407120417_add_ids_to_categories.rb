class AddIdsToCategories < ActiveRecord::Migration
  def change
    add_reference :categories, :gender, index: true, foreign_key: true
    add_reference :categories, :subcategory, index: true, foreign_key: true
  end
end
