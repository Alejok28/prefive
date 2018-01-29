Rails.application.routes.draw do
  get 'pages/prefive'
  get 'pages/faq'

  resources :posts
  root 'posts#index'
  devise_for :users

end
