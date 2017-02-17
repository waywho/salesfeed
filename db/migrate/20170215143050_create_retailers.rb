class CreateRetailers < ActiveRecord::Migration
  def change
    create_table :retailers do |t|
    	t.string :name
    	t.string :host_url
    	t.string :part_url
    	t.text :brief_description
    	t.text :html_meta_description
    	t.text :description
    	t.text :description
    	t.text :internal_notes
    	t.text :admin_notes
    	t.text :support_notes
    	t.text :search_keywords
    	t.string :facebook_url
    	t.string :instagram_url
    	t.string :favicon
    	t.string :logo
    	t.string :cover
      t.timestamps null: false
    end
  end
end
