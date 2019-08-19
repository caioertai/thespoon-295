Rails.application.routes.draw do
  root to: 'pages#about'

  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'

  get '/restaurants', to: 'restaurants#index'
  get '/restaurants/:id', to: 'restaurants#show', as: 'restaurant'
  post '/restaurants', to: 'restaurants#create'
end
