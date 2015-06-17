class CreateMarkets < ActiveRecord::Migration
  def change
    create_table :markets do |t|
      t.text :title
      t.text :street_address
      t.text :city
      t.float :latitude
      t.float :longitude
      t.text :weekday
      t.time :time_opens
      t.time :time_closes
      t.text :date_opens
      t.text :date_closes
      t.text :governing_body
      t.text :county
      t.text :food_stamps
      t.text :notes
    end
  end
end
