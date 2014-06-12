class CreateSeatCategories < ActiveRecord::Migration
  def change
    create_table :seat_categories do |t|
      t.string :name
      
      t.timestamps
    end
  end
end
