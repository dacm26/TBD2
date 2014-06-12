class CreateItineraries < ActiveRecord::Migration
  def change
    create_table :itineraries do |t|
      t.integer :id_origin_city
      t.integer :id_destiny_city
      t.time :departure_time
      t.time :arrival_time
      t.integer :id_airplane

      t.timestamps
    end
    add_index :itineraries, :id_origin_city
    add_index :itineraries, :id_destiny_city
    add_index :itineraries, :id_airplane

  end
end
