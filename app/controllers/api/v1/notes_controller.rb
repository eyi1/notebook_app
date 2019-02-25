module Api::V1
    class NotesController < ApplicationController
      before_action :set_note, only: [:show, :update, :destroy]
    
      def index
      # @notes = Note.all 
      # render json: @notes
      if params[:notebook_id]
        @notes = Notebook.find(params[:notebook_id]).notes     
        render json: @notes
      else
        @notes=Note.all
        render json: @notes
      end
       
      end

      def create
       # @note = Note.new(title: params[:title], content: params[:content], notebook_id: params[:notebook_id])
       @note = Note.new(title: params[:title], content: params[:content], notebook_id: 55)
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
  