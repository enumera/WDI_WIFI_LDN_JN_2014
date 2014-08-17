class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :user_type_id, :first, :last, :dob, :sex, :occupation, :position, :image, :role,
  :phone
  # attr_accessible :title, :body

  belongs_to :user_type
  has_and_belongs_to_many :groups
  has_many :reviews

  mount_uploader :image, ProfileImageUploader
  
end
