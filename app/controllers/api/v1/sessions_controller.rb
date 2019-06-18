module Api::V1
    class SessionsController < ApplicationController
        #login
        def create 
            #byebug
            @user = User.find_by(email_string: params[:email_string])

            if @user && @user.authenticate(params[:password])
                
                token = generate_token({id: @user.id})
                response = {
                    user: UserSerializer.new(@user),
                    jwt: token
                  }
        
                render json: response   
            else
                render json: { errors: { message: "unable to find user with that email or password" } }, status: 500 #server error
                #render json: @user.errors, status: 400
            end
            
        end

    end
end
