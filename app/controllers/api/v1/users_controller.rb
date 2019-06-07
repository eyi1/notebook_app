module Api::V1
    class UsersController < ApplicationController
      #before_action :authenticate_user
      before_action :set_user, only: [:show, :update, :destroy]

      def index
      @users = User.all 
      render json: @users
      end

      # def create
      #   @user = User.new(user_params)
      #   if @user.save
      #     @user.create
      #       render json: @user
      #   else
      #     render json: @user.errors, status: 400
      #   end
      # end

      def create
        @user = User.new(user_params)
        if @user.valid? && @user.save
          render json: @user
        else
          render json: @user.errors, status: 400
        end
      end

      def show
        render json: @user
      end

      def update 
        if @user.update(user_params)
          render json: @user
        else
          render json: @user.errors, status: 400
        end
      end

      def destroy
        @user.destroy
      end

      def find
        @user = User.find_by(email: params[:user][:email])
        if @user
          render json: @user
        else
          @errors = @user.errors.full_messages
          render json: @errors
        end
       end

      private
      def set_user
        @user = User.find_by(id: params[:id])
      end

      def user_params
        params.require(:user).permit(:name, :email, :password)
      end
      
    end
  end
  