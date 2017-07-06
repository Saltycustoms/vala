Rails.application.routes.draw do
  get 'sides/edit'
  get 'sides/update'

  namespace :api do
    namespace :v1 do
      resources :products
      resources :colors
      resources :blanks
      resources :color_options
      resources :price_ranges
      resources :properties
      resources :sides
      resources :sizes
      resources :prints
    end
  end

  resources :products
  resources :colors
  resources :blanks
  resources :sides
  root "blanks#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
