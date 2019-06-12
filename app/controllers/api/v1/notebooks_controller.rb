module Api::V1
  class NotebooksController < ApplicationController
    before_action :set_notebook, only: [:show, :update, :destroy]

    def index
     #@notebooks = Notebook.all 
      if logged_in?
       @notebooks = current_user.notebooks
       render json: @notebooks
      else
       render json: { message: "not logged in" }, status: 403
      end
    end


    def create
      if logged_in?
      #@notebook = current_user.notebooks.build(notebook_params)
      #@notebook = Notebook.new(name: params[:name], user_id: 1)
      @notebook = Notebook.new(name: params[:name], user_id: current_user.id)
        if @notebook && @notebook.save
            render json: @notebook
        else
            render json: { message: notebook.errors }, status: 400
        end

      else
        render json: { message: "not logged in" }, status: 403
      end
    end

    def show
      if logged_in?
        render json: @notebook
      else
        render json: { message: "not logged in" }, status: 403
      end
    end

    def update 
      if logged_in?
        if @notebook.update(name: params[:name], user_id: current_user.id)
          render json: @notebook
        else
          render json: { message: @notebook.errors }, status: 400
        end
      else
        render json: { message: "not logged in" }, status: 403
      end
    end

    def destroy
      if logged_in?
        if @notebook.destroy
          render json: { message: "Successfully removed item." }, status: 204
        else
          render json: { message: "Unable to remove item" }, status: 400
        end
      else
        render json: { message: "not logged in" }, status: 403
      end
    end
    
    private

    def set_notebook
      @notebook = Notebook.find_by(id: params[:id])
    end

    def notebook_params
      params.require(:notebook).permit(
        :name,
        :user_id
        )
    end

  end
end