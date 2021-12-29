Rails.application.routes.draw do
  resources :articles, only: %i[index show]

  get '/me', to: 'users#show'

  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
