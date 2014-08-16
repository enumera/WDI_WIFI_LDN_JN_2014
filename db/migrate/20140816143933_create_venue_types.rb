class CreateVenueTypes < ActiveRecord::Migration
  def change
    create_table :venue_types do |t|
      t.integer :wifi_id
      t.string :type

      t.timestamps
    end
  end
end
