class AddDatesToDeals < ActiveRecord::Migration
  def change
    add_column :deals, :starts, :datetime, index: true
    add_column :deals, :ends, :datetime, index: true
    add_column :deals, :code, :string
    add_column :deals, :terms, :text
  end
end
