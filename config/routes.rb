Rails.application.routes.draw do

  root to: 'rent_houses#index'

  resources :rent_houses do
    resources :stations
  end

end
