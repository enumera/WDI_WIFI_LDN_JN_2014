class RemoveTypeFromVenueTypes < ActiveRecord::Migration
  def up
    remove_column :venue_types, :type
  end

  def down
    add_column :venue_types, :type, :string
  end
end
