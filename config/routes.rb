Rails.application.routes.draw do
  root  'homes#top'
  devise_for :users #ユーザ認証に必要なもの（覚えるしかない

  resources :post_images, only: [:new, :index, :show, :create, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update]

  get 'homes/about' => 'homes#about', as: 'about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
