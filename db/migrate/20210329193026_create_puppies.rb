class CreatePuppies < ActiveRecord::Migration[6.1]
  def change
    create_table :puppies do |t|
      t.string :name
      t.string :breed
      t.integer :age
      t.string :cute_fact
      t.integer :cost
      t.string :image
      t.integer :person_id
      t.integer :shelter_id
      t.boolean :adoption

      t.timestamps
    end
  end
end
