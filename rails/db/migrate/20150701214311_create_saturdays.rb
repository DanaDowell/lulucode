class CreateSaturdays < ActiveRecord::Migration
  def up
    execute <<-SQL
      CREATE VIEW saturdays AS 
      SELECT m.id, m.title, m.street_address, m.city, m.time_opens, m.time_closes, m.food_stamps
      FROM markets m WHERE weekday = 'Saturday'
    SQL
  end

  def down
    execute 'DROP VIEW saturdays'
  end
end
