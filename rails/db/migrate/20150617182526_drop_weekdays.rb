class DropWeekdays < ActiveRecord::Migration
  def change
    drop_table :weekdays
  end
end
