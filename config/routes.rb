Rails.application.routes.draw do
  get 'pages/prefive'

  resources :posts
  root 'posts#index'
  devise_for :users

end
