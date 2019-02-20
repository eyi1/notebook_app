module Api::V1
  class NotebooksController < ApplicationController
  
    def index
    @notebooks = Notebook.all 
    render json: @notebooks
    end

    def create
      if @notebook && @notebook.save
        render json: @notebook
      else
        render json: { message: notebook.errors }, status: 400
      end
    end

    def show
    end

    def update 
    end

    def destroy
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
