class Review < ActiveRecord::Base
  attr_accessible :comment, :food, :overall_rating, :power_point_availability, :quietness, :reservation_possible, :rough_number_of_seats, :signal_strength, :speed, :stability, :toilet, :user_id, :wifi_id

  belongs_to :wifi
  belongs_to :user
  
  paginates_per 2

  # validates :overall_rating, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 5}

end
