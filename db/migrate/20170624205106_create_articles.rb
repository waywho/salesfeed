class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :url
      t.text :description
      t.string :image_url
      t.string :publisher
      t.references :user, index: true, foreign_key: true
      t.references :gender, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
