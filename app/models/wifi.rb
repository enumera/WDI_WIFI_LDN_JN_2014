class Wifi < ActiveRecord::Base
  attr_accessible :address_line_1, :address_line_2, :business_name, :city, :country, :free_or_paid, :name, :password, :phone, :postcode, :share_scope, :venue_type_id, :image, :powerpoint, :number_of_seats, :reservation_possible, :overall_rating

  belongs_to :venue_type
  has_many :reviews

  has_and_belongs_to_many :users
  has_and_belongs_to_many :groups

     validates :business_name, presence: true, uniqueness: true
     validates :name, presence: true
     validates :password, presence: true
     validates :address_line_1, presence: true
     validates :city, presence: true
     validates :country, presence: true
     validates :postcode, presence: true



  mount_uploader :image, VenueImageUploader

  validates :business_name, presence: :true, uniqueness: true, on: :create
  validates :phone, numericality: { only_integer: true }
  validates :name, presence: true
  validates :password, presence: true

end
