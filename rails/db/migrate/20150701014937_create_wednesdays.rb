class CreateWednesdays < ActiveRecord::Migration
  def up
    execute <<-SQL
      CREATE VIEW wednesdays AS 
      SELECT m.id AS id
      FROM markets m WHERE weekday = 'Wednesday'
    SQL
  end

  def down
    execute 'DROP VIEW wednesdays'
  end
end
