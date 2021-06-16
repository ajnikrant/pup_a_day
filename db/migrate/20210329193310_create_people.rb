class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.string :usename
      t.string :email

      t.timestamps
    end
  end
end
