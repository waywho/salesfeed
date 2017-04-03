class AddSubcategoryToDeals < ActiveRecord::Migration
  def change
    add_reference :deals, :subcategory, index: true, foreign_key: true
  end
end
