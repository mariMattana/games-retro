class AddOwnerIdToRentals < ActiveRecord::Migration[5.1]
  def change
    add_column :rentals, :owner_id, :integer, null: false, index: true
  end
end
