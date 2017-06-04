class AddStartsDefaultAgainAgainToDeals < ActiveRecord::Migration
  def up
    change_column :deals, :starts, :datetime, :default => nil
  end

  def down
    change_column :deals, :starts, :datetime, default: '2017-05-24 10:02:42'
  end
end
