Rails.application.routes.draw do
  root 'home#index'

  resources :cards, only: %i[index show]
end
