Rails.application.routes.draw do
  root 'main#index'

  resources :rounds
end
