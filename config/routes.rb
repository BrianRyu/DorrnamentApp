Rails.application.routes.draw do
  resources :entries
  resources :drafts
  resources :venues
  resources :tournaments
  resources :teams
  resources :players
  get '/login', to: "sessions#new"
  root to: "tournaments#index"
  resource :sessions
  get '/analytics', to: "tournaments#analytics"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
