Rails.application.routes.draw do
  root to: 'maintenance_locations#index'
  resources :maintenance_locations
  resource :machines
end
