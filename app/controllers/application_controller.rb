class ApplicationController < ActionController::API
    include Knock::Authenticable

    def logged_in?
        !!current_user
    end

    def generate_token(payload)
        JWT.encode payload, ENV["TOKEN_SECRET"], 'HS256' 
    end

    def decode_token
        token = request.headers["Authorization"].split(" ")[1]
        JWT.decode(token, ENV["TOKEN_SECRET"])[0]["id"]
    end

    def current_user
        begin
            User.find_by(id: decode_token)
        rescue
            nil
        end
        
     #   User.find_by(id: JWT.decode(request.headers["Authorization"], ENV["TOKEN_SECRET"])[0]["id"])
        
    end
end
