class ApplicationController < ActionController::Base
  protect_from_forgery

    def after_sign_in_path_for(user)
      edit_user_path(user)
    end

    def after_sign_out_for(user)
      root_path
    end



  
end
