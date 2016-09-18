Rails.application.routes.draw do
  root to: 'dashboard#index'
  resources :event_dates
  resources :event_types
  resources :states
  resources :cities
  resources :houses
  resources :streets
  resources :roles
  resources :names
  resources :surnames
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
