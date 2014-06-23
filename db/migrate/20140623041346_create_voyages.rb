class CreateVoyages < ActiveRecord::Migration
  def change
    create_table :voyages do |t|
      t.integer :itinerary_id
      t.integer :ticket_id
    end
      add_index :voyages, :itinerary_id
      add_index :voyages, :ticket_id
  end
end
