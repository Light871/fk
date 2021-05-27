Rails.application.routes.draw do
  get 'cards/index'
  root 'home#index'

  resources :cards, only: [:index, :show]
end
