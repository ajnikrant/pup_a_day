class AddCompletedToRentals < ActiveRecord::Migration[6.1]
  def change
    add_column :rentals, :complete, :boolean, default: false
  end
end
