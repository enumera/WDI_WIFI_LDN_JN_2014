class Group < ActiveRecord::Base
  attr_accessible :name, :group_type, :user_ids

  has_and_belongs_to_many :users
  has_and_belongs_to_many :wifis

  
   paginates_per 3

  
end
