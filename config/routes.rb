Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :users, :notebooks, :notes
      #post 'find_user' => 'users#find'
      post '/signup', to: "users#create"
      post '/login', to: "sessions#create"
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