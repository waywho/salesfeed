class AddTagToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :tags, :string
  end
end
