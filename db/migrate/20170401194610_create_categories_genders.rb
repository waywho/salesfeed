class CreateCategoriesGenders < ActiveRecord::Migration
  def change
    create_table :categories_genders do |t|
      t.belongs_to :category, index: true, foreign_key: true
      t.belongs_to :gender, index: true, foreign_key: true
    end
  end
end
