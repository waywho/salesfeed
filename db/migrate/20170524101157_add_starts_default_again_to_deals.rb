class AddStartsDefaultAgainToDeals < ActiveRecord::Migration
  def change
    change_column :deals, :starts, :datetime
  end
end
