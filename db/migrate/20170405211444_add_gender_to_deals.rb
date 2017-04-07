class AddGenderToDeals < ActiveRecord::Migration
  def change
    add_column :deals, :gender_id, :integer
  end
end
