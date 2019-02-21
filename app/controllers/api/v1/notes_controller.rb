module Api::V1
    class NotesController < ApplicationController
      before_action :set_note, only: [:show, :update, :destroy]
    
      def index
      @notes = Note.all 
      render json: @notes
      end

      def create
        @note = Note.new(name: params[:title], params[:content], notebook_id: 1)
        if @note && @note.save
          render json: @note
        else
          render json: { message: notebook.errors }, status: 400 
        end
      end

      def show
        render json: @note
      end

      def update 
      end

      def destroy
        @note.destroy
      end

      private

      def set_note
        @note = Note.find_by(id: params[:id])
      end
      
    end
  end
  