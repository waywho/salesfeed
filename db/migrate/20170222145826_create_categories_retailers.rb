class CreateCategoriesRetailers < ActiveRecord::Migration
  def change
    create_table :categories_retailers do |t|
    	t.belongs_to :categories, index: true
    	t.belongs_to :retailers, index: true
    	
      t.timestamps null: false
    end
  end
end
