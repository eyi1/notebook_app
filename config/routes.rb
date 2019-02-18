Rails.application.routes.draw do
  resources :notes
  resources :users
  #get 'notebooks/index'
  #resources :notebooks

  namespace :api do
    namespace :v1 do
      resources :notebooks 
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
