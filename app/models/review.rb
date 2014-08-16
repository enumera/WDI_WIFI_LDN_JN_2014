class Review < ActiveRecord::Base
  attr_accessible :comment, :food, :overall_rating, :power_point_availability, :quietness, :reservation_possible, :rough_number_of_seats, :signal_strength, :speed, :stability, :toilet, :user_id, :wifi_id
end
