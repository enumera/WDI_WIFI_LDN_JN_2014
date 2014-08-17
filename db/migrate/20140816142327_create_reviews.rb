class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.belongs_to :user
      t.integer :wifi_id
      t.text :comment
      t.integer :stability
      t.integer :signal_strength
      t.integer :speed
      t.integer :quietness
      t.integer :overall_rating
      t.integer :food
      t.integer :toilet
      t.integer :power_point_availability
      t.integer :rough_number_of_seats
      t.boolean :reservation_possible

      t.timestamps
    end
  end
end
