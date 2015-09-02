Rails.application.routes.draw do

  get '/posts/:subs', to: 'posts#show'

  root 'home#index'
end
