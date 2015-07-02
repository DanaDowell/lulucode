class CreateThursdays < ActiveRecord::Migration
  def up
    execute <<-SQL
      CREATE VIEW thursdays AS 
      SELECT m.id, m.title, m.street_address, m.city, m.time_opens, m.time_closes, m.food_stamps
      FROM markets m WHERE weekday = 'Thursday'
    SQL
  end

  def down
    execute 'DROP VIEW thursdays'
  end
end
