Rails.application.routes.draw do
  devise_for :users
  root :to => 'cosmes#index'
  resources :admin
end
