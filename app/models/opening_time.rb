class OpeningTime < ActiveRecord::Base
  attr_accessible :close, :day, :open, :wifi_id
  belongs_to :wifi
end
