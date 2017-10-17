Rails.application.routes.draw do
  devise_for :users, controllers: { :omniauth_callbacks => "users/omniauth_callbacks", :sessions=> 'users/sessions' }
  namespace :api do
    namespace :v1 do
      resources :products
      resources :colors
      resources :blanks
      resources :color_options
      resources :color_counts
      resources :price_ranges
      resources :properties
      resources :sides
      resources :sizes
      resources :prints
    end
  end
  resources :print_methods
  resources :currency_exchanges do
    member do
      put "update_color_count_price_ranges"
    end
  end
  resources :blocks
  resources :products
  resources :colors do
    member do
      get :by_label
    end
  end
  resources :blanks
  resources :histories
  resources :api_keys
  root "blanks#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
