Rails.application.routes.draw do
  get 'reviews/create'

  get 'pages/prefive'
  get 'pages/faq'

  resources :posts do
    resources :comments, only: [:create]
  end
  resources :posts do
    resources :reviews, only: [:create]
  end
  root 'posts#index'
  devise_for :users

end
