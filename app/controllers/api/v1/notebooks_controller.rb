module Api::V1
  class NotebooksController < ApplicationController
  
    def index
    @notebooks = Notebook.all 
    render json: @notebooks
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
