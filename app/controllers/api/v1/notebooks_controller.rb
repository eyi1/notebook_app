module Api::V1
  class NotebooksController < ApplicationController
  
    def index
    @notebooks = Notebook.all 
    render json: @notebooks
    end
    
  end
end
