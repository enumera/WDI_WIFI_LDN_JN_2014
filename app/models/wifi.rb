class Wifi < ActiveRecord::Base
  attr_accessible :address_line_1, :address_line_2, :business_name, :city, :country, :free_or_paid, :name, :password, :phone, :postcode, :share_scope
end
