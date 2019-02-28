Rails.application.routes.draw do
  # controller#action
  root 'subs#index'
  # get 'subs/index'

  resources :subs do
    resources :topics
  end

  # resources :subs
  # get '/subs', to: 'subs#index'
  # get '/subs/:id', to: 'subs#show'
  # get '/subs/:id', to: 'subs#index'
  # get '/subs/:id', to: 'subs#update'
  # delete '/subs/:id', to "subs#destroy"

end
