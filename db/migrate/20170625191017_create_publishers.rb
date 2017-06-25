class CreatePublishers < ActiveRecord::Migration
  def change
    create_table :publishers do |t|
      t.string :name
      t.string :title_find
      t.string :description_find
      t.string :image_find
      t.string :host_url

      t.timestamps null: false
    end
  end
end
