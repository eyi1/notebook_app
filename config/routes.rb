Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :users
    end
  end

  namespace :api do
    namespace :v1 do
      resources :notes
    end
  end

  namespace :api do
    namespace :v1 do
      resources :notebooks 
    end
  end
    #get 'notebooks/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
