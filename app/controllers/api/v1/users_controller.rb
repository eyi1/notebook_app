module Api::V1
    class UsersController < ApplicationController
    
      def index
      @users = User.all 
      render json: @users
      end

      def new 
      end

      def create
      end

      def show
      end

      def edit
      end

      def update 
      end

      def destroy
      end
      
    end
  end
  