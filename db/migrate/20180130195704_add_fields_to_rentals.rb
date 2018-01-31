class AddFieldsToRentals < ActiveRecord::Migration[5.1]
  def change
    add_column :rentals, :status, :integer, default: 0
    add_column :rentals, :price, :float
    add_column :rentals, :start_date, :date
    add_column :rentals, :end_date, :date
  end
end
