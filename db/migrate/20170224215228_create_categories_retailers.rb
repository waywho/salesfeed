class CreateCategoriesRetailers < ActiveRecord::Migration
  def change
    create_table :categories_retailers do |t|
    	t.belongs_to :category, index: true
    	t.belongs_to :retailer, index: true
    end
  end
end
