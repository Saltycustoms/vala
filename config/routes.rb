Rails.application.routes.draw do
  get 'sides/edit'

  get 'sides/update'

  resources :products
  resources :colors
  resources :blanks
  resources :sides
  root "blanks#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
