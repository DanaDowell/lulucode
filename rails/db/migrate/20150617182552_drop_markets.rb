class DropMarkets < ActiveRecord::Migration
  def change
    drop_table :markets
  end
end
