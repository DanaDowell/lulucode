class CreateTuesdays < ActiveRecord::Migration
  def up
    execute <<-SQL
      CREATE VIEW tuesdays AS 
      SELECT m.id AS id
      FROM markets m WHERE weekday = 'Tuesday'
    SQL
  end

  def down
    execute 'DROP VIEW tuesdays'
  end
end
#CREATE VIEW Tuesdays AS SELECT title FROM Markets WHERE weekday='Tuesday';
