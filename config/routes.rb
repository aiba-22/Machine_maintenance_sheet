Rails.application.routes.draw do
  root to: 'maintenance_locations#index'
  resource :maintenance_locations
  resource :machines
end
