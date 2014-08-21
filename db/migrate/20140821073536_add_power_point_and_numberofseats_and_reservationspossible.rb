class AddPowerPointAndNumberofseatsAndReservationspossible < ActiveRecord::Migration
  def change
    add_column :wifis, :powerpoint, :integer
    add_column :wifis, :number_of_seats, :integer
    add_column :wifis, :reservation_possible, :boolean
  end

end
