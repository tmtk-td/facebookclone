Rails.application.routes.draw do
  resources :favorites
  resources :feeds
  get 'sessions/new'
  root 'blogs#index'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show, :edit, :update]
  resources :favorites, only: [:create, :destroy]
  resources :blogs do
    collection do
      post :confirm
    end
  end
end
