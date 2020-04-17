class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    def after_signed_path_for(resource)
        if current_user.admin?
            jams_path
        else
            home_index_path
        end
    end
end
