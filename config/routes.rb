Rails.application.routes.draw do
resources :users
resources :attractions
root to: 'welcome#index' 
get '/signin', to: 'sessions#signin'
post '/signin', to: 'sessions#create'
delete '/logout', to: 'sessions#destroy'
end