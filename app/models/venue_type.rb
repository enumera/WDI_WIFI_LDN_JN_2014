class VenueType < ActiveRecord::Base
  attr_accessible :name, :wifi_ids

  has_many :wifis
end
