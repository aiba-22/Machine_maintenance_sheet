Rails.application.routes.draw do
  root to: 'maintenances#show'
  resource :maintenances
end
