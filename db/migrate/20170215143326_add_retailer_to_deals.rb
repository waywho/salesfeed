class AddRetailerToDeals < ActiveRecord::Migration
  def change
    add_column :deals, :retailer_id, :integer
  end
end
