Rails.application.routes.draw do
  # controller#action
  root 'subs#index'
  # get 'subs/index'

  resources :subs do
    resources :topics
  end

  # /subs/:sub_id/topics/:id(.:format)
  # sub_id 7
  # topic_id 4
  # /subs/7/topics/4

  # resources :subs
  # get '/subs', to: 'subs#index'
  # get '/subs/:id', to: 'subs#show'
  # get '/subs/:id', to: 'subs#index'
  # get '/subs/:id', to: 'subs#update'
  # delete '/subs/:id', to "subs#destroy"

end
