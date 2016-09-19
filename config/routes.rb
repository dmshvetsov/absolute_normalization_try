Rails.application.routes.draw do
  resources :events
  resources :people
  resources :addresses
  resources :event_types
  resources :states
  resources :cities
  resources :houses
  resources :streets
  resources :roles
  resources :names
  resources :surnames
  root to: 'dashboard#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
