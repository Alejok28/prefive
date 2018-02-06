Rails.application.routes.draw do
  get 'pages/prefive'
  get 'pages/faq'

  resources :posts do
    resources :comments, only: [:create]
  end
  root 'posts#index'
  devise_for :users

end
