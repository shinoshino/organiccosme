Rails.application.routes.draw do
  devise_for :users
  root 'cosmes#index'
  get 'cosmes/new' => 'cosmes#new'
  get '/pages/brand', :to => 'pages#brand'
  get '/pages/popular', :to => 'pages#popular'
  get '/pages/hot', :to => 'pages#hot'
  get '/pages/foundation', :to => 'pages#foundation'
  get '/pages/sunscreen', :to => 'pages#sunscreen'
  get '/pages/madeinjapan', :to => 'pages#madeinjapan'
  post 'cosmes' => 'cosmes#create'
  resources :cosmes, only: :destroy
  patch 'cosmes/:id'  => 'cosmes#update'
  get 'cosmes/:id/edit' => 'cosmes#edit'
  get 'users/:id' => 'users#show'
  resources :admin
end
