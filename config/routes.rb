Rails.application.routes.draw do
  get 'cards/index'
  root 'home#index'
end
