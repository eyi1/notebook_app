Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      #resources :users
      resources :users, :notebooks, :notes
      post 'user_token' => 'user_token#create'
      post 'find_user' => 'users#find'
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

end