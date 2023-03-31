Rails.application.routes.draw do
  root 'home#index'

  resources :games , only: [:show] do
    resources :postits, only: [:create, :destroy]
  end


end
