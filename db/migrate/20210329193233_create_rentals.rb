class CreateRentals < ActiveRecord::Migration[6.1]
  def change
    create_table :rentals do |t|
      t.integer :cost
      t.integer :time
      t.integer :puppy_id
      t.integer :person_id

      t.timestamps
    end
  end
end
