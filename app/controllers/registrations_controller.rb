class RegistrationsController < Devise::RegistrationsController
  def create
    super do
      @user.groups << Group.where(group_type: "public")
    end
  end
end