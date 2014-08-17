class CreateOpeningTimes < ActiveRecord::Migration
  def change
    create_table :opening_times do |t|
      t.string :day
      t.time :close
      t.time :open
      t.belongs_to :wifi

      t.timestamps
    end
  end
end
