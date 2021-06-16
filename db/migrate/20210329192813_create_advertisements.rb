class CreateAdvertisements < ActiveRecord::Migration[6.1]
  def change
    create_table :advertisements do |t|
      t.integer :shelter_id
      t.integer :puppy_id
      t.string :info

      t.timestamps
    end
  end
end
