class AddColumnsToRetailers < ActiveRecord::Migration
  def change
    add_column :retailers, :merchant_id, :integer
    add_column :retailers, :strap_line, :string
  end
end
