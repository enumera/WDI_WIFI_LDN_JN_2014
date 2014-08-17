class AddVenueTypeIdTowifi < ActiveRecord::Migration
  def change
    add_column :wifis, :venue_type_id, :integer

  end

end
