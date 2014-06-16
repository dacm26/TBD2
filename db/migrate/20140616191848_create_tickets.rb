class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :customer_category_id
      t.integer :seat_category_id
      t.integer :customer_id
      t.float :price

      t.timestamps
    end
    add_index :tickets, :customer_category_id
    add_index :tickets, :seat_category_id
    add_index :tickets, :customer_id
  end
end
