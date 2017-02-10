class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.text :message
    	t.integer :user_id
    	t.integer :deal_id

      t.timestamps null: false
    end

    add_index :comments, :user_id
    add_index :comments, :deal_id
  end
end
