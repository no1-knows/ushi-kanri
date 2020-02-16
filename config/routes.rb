Rails.application.routes.draw do
  resources :cows do
    resource :move, only: [:edit, :update], module: :cows
  end
  root 'cows#index'
end
