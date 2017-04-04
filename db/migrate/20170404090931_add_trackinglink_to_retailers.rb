class AddTrackinglinkToRetailers < ActiveRecord::Migration
  def change
    add_column :retailers, :tracking_link, :string
  end
end
