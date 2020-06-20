Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  namespace :api do
    namespace :v1 do
      get 'user' => 'user#index'
      post 'auth' => 'authentication#create'
      get  '/auth' => 'authentication#fetch'
      resources :products
      post "/upgrade" => "upgrade#create"
      resources :categories
    end
  end
end