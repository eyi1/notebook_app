class ApplicationController < ActionController::API
    include Knock::Authenticable

    def logged_in?
        !!current_user
    end
end
