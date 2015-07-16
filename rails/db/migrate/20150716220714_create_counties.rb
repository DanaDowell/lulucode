class CreateCounties < ActiveRecord::Migration
  def up
    execute <<-SQL
      CREATE VIEW counties AS 
      SELECT m.id, m.city, m.county
      FROM markets m
    SQL
  end

  def down
    execute 'DROP VIEW counties'
  end
end
