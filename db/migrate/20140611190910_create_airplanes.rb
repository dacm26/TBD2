class CreateAirplanes < ActiveRecord::Migration
  def change
    create_table :airplanes do |t|
      t.string :model
      t.integer :capacity

      t.timestamps
    end
  end
end
