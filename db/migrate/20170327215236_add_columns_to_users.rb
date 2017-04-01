class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean, default: false
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :birthdate, :datetime
    add_column :users, :gender, :string
    add_column :users, :username, :string

    add_index :users, :last_name
    add_index :users, :username  
  end
end
