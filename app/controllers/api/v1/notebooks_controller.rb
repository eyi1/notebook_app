module Api::V1
  class NotebooksController < ApplicationController
    #before_action :authenticate_user
    before_action :set_notebook, only: [:show, :update, :destroy]

    def index
    @notebooks = Notebook.all 
    #@notebooks = current_user.notebooks
    render json: @notebooks
    end

    def create
      #@notebook = current_user.notebooks.build(notebook_params)
      @notebook = Notebook.new(name: params[:name], user_id: 1)
      if @notebook && @notebook.save
        render json: @notebook
      else
        render json: { message: notebook.errors }, status: 400
      end
    end

    def show
      render json: @notebook
    end

    def update 
      if @notebook.update(name: params[:name], user_id: 1)
        render json: @notebook
      else
        render json: { message: @notebook.errors }, status: 400
      end
    end

    def destroy
      if @notebook.destroy
        render json: { message: "Successfully removed item." }, status: 204
      else
        render json: { message: "Unable to remove item" }, status: 400
      end
    end
    

    private

    def set_notebook
      @notebook = Notebook.find_by(id: params[:id])
    end

    def notebook_params
      params.require(:notebook).permit(:name)
    end

  end
end
