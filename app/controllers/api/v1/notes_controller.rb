module Api::V1
    class NotesController < ApplicationController
    
      def index
      @notes = Note.all 
      render json: @notes
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
  