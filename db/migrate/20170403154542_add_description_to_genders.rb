class AddDescriptionToGenders < ActiveRecord::Migration
  def change
    add_column :genders, :description, :text
  end
end
