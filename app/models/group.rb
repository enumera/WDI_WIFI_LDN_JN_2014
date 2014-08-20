class Group < ActiveRecord::Base
  attr_accessible :name, :group_type

  has_and_belongs_to_many :users

  
  
end
