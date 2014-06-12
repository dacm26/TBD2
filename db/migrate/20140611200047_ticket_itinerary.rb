class TicketItinerary < ActiveRecord::Migration
  def change
  	create_table :tickets_itineraries, :id => false do |t|
      t.belongs_to :ticket
      t.belongs_to :itinerary
    end
    add_index :tickets_itineraries, [:ticket_id,:itinerary_id], unique: true, name: "tickets_itineraries"
  end
end
