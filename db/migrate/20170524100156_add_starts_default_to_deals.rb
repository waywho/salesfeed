class AddStartsDefaultToDeals < ActiveRecord::Migration
  def change
    change_column :deals, :starts, :datetime, :default => Time.zone.now
  end
end
