Rails.application.routes.draw do
  root 'main#index'

  resources :rounds

  post "vote_up", to: "votes#vote_up"
  post "vote_down", to: "votes#vote_down"
  post "email_address", to: "email_address#create"
end
