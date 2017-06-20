Rails.application.routes.draw do
  resources :colors
  resources :blanks
  root "blanks#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
