class CreateTuesdays < ActiveRecord::Migration
  def up
    execute <<-SQL
      CREATE VIEW tuesdays AS 
      SELECT m.id, m.title, m.street_address, m.city, m.time_opens, m.time_closes, m.food_stamps
      FROM markets m WHERE weekday = 'Tuesday'
    SQL
  end

  def down
    execute 'DROP VIEW tuesdays'
  end
end
#CREATE VIEW Tuesdays AS SELECT title FROM Markets WHERE weekday='Tuesday';
#attributes :id, :title, :street_address, :city, :time_opens, :time_closes, :food_stamps