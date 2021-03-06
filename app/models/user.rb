class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:google_oauth2]

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :user_type_id, :first, :last, :dob, :sex, :occupation, :position, :image, :role, :phone, :uid, :provider, :group_ids
  # attr_accessible :title, :body

  belongs_to :user_type
  has_and_belongs_to_many :groups
  has_many :reviews
  has_and_belongs_to_many :wifis

  mount_uploader :image, ProfileImageUploader
   validates :email, presence: true, uniqueness: true
   # validates :first, presence: true
   # validates :last, presence: true
  
def self.find_for_google_oauth2(auth, signed_in_user=nil)
  if user = signed_in_user || User.find_by_email(auth.info.email)
    user.provider = auth.provider
    user.uid = auth.uid
    # user.name = auth.info.name if user.name.blank?
    # user.image = auth.info.image if user.image.blank?
    user.save
    user
  else
    where(auth.slice(:provider, :uid)).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.first = auth.info.first
      user.last = auth.info.last
      user.email = auth.info.email
      # user.image = auth.info.image
      user.password = Devise.friendly_token[0,20]
      # user.skip_confirmation! # don't require email confirmation
    end
  end
end


end
