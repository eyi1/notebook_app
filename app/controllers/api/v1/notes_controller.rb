module Api::V1
    class NotesController < ApplicationController
    
      def index
      @notes = Note.all 
      render json: @notes
      end

      def create
        @note = Note.new(id: params[:id], name: params[:title], params[:content])
        if @note && @note.save
          render json: @note
        else
          render json: { message: notebook.errors }, status: 400 
        end
      end

      def show
        render json: @note
      end

      def edit
      end

      def update 
      end

      def destroy
      end
      
    end
  end
  