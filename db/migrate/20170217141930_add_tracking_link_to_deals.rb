class AddTrackingLinkToDeals < ActiveRecord::Migration
  def change
    add_column :deals, :tracking_link, :string
  end
end
