class RenameBooksToBookings < ActiveRecord::Migration[5.2]
  def change
    rename_table :books, :bookings
  end
end
