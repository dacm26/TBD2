class CreateItineraries < ActiveRecord::Migration
  def change
    create_table :itineraries do |t|
      t.integer :origin_city_id
      t.integer :destiny_city_id
      t.integer :airplane_id
      t.date :departure_date
      t.date :arrival_date
      t.time :departure_time
      t.time :arrival_time

      t.timestamps
    end
    add_index :itineraries, :origin_city_id
    add_index :itineraries, :destiny_city_id
    add_index :itineraries, :airplane_id
  end
end
