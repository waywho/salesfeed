class DropCategoriesGendersTable < ActiveRecord::Migration
  def change
    drop_table :categories_genders
  end
end
