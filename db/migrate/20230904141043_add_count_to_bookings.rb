class AddCountToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :count, :integer
  end
end
