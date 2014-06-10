class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :passport
      t.date :birth_date
      t.string :nationality

      t.timestamps
    end
  end
end
