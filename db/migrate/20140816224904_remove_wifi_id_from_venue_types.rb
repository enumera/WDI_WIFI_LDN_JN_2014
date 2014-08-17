class RemoveWifiIdFromVenueTypes < ActiveRecord::Migration
  def up
    remove_column :venue_types, :wifi_id
  end

  def down
    add_column :venue_types, :wifi_id, :integer
  end
end
