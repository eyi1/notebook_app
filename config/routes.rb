Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :users, :notebooks, :notes
      post 'user_token' => 'user_token#create'
    end
  end

  namespace :api do
    namespace :v1 do
      resources :users do 
        resources :notebooks 
      end
    end
  end

  namespace :api do
    namespace :v1 do
      resources :notebooks do
        resources :notes
      end
    end
  end

    #get 'notebooks/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
