Rails.application.routes.draw do
  root to: 'maintenances#index'
  resource :maintenances
  resource :machines
end
