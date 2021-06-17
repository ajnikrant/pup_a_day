class AddDatecolumnToRentals < ActiveRecord::Migration[6.1]
  def change
    add_column :rentals, :date, :date
  end
end
