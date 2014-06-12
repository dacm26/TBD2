class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.date :departure_date
      t.date :arrival_date
      t.integer :id_customer_category
      t.integer :id_seat_category
      t.integer :id_customer

      t.timestamps
    end
    add_index :tickets, :id_customer_category
    add_index :tickets, :id_seat_category
    add_index :tickets, :id_customer
  end
end
