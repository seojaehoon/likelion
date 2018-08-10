Rails.application.routes.draw do
  get 'body/index'
  get 'body/new'
  get 'talk/index'
  get 'talk/new'
  get 'talk/create'
  get 'chat/index'
  get 'talk/learn'
  resources :body
  root 'home#index'
  resources :posts
  post '/posts/:post_id' =>"comments#create"
  delete '/posts/:post_id/comments/:id' =>"comments#destroy"
  post '/posts/:post_id/comments/:id' =>"comments#update"
  devise_for :users
end