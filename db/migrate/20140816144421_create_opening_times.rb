class CreateOpeningTimes < ActiveRecord::Migration
  def change
    create_table :opening_times do |t|
      t.integer :wifi_id
      t.string :day
      t.time :open
      t.time :close

      t.timestamps
    end
  end
end
