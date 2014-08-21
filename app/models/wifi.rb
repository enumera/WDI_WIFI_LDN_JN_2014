class Wifi < ActiveRecord::Base
  attr_accessible :address_line_1, :address_line_2, :business_name, :city, :country, :free_or_paid, :name, :password, :phone, :postcode, :share_scope, :venue_type_id, :image, :powerpoint, :number_of_seats, :reservation_possible

  belongs_to :venue_type
  has_many :reviews
  has_many :opening_times
  has_and_belongs_to_many :users

  mount_uploader :image, VenueImageUploader


end
