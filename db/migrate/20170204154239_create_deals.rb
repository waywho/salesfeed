class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
    	t.string :title
    	t.text :message
    	t.string :deeplink
    	t.string :slug
      	t.timestamps null: false
    end
  end
end
