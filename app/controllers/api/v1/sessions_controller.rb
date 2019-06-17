module Api::V1
    class SessionsController < ApplicationController
        #login
        def create 
            @user = User.find_by(email_string: params[:email_string])

            if @user && @user.authenticate(user_params[:password])
                token = generate_token({id: @user.id})
                response = {
                    user: UserSerializer.new(@user),
                    jwt: token
                  }
        
                render json: response   
            else
                render json: @user.errors, status: 400
            end
            
        end

        private
        def user_params
            params.require(:user).permit(:name, :email_string, :password)
        end

    end
end
