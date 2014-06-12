class RenamingColumns < ActiveRecord::Migration
  def change
  	rename_column :itineraries, :id_origin_city, :origin_city_id
  	rename_column :itineraries, :id_destiny_city, :destiny_city_id
  	rename_column :itineraries, :id_airplane, :airplane_id

  	rename_column :tickets, :id_customer_category, :customer_category_id
  	rename_column :tickets, :id_seat_category, :seat_category_id
  	rename_column :tickets, :id_customer, :customer_id
  end
end
