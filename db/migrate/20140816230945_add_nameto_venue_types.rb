class AddNametoVenueTypes < ActiveRecord::Migration
  def change

    add_column :venue_types, :name, :string
  
  end
end
