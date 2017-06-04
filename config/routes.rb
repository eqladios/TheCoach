Rails.application.routes.draw do
  resources :problems
  resources :sections
  get 'users/show/:id', to: 'users#show', as: 'user_show'
  get 'users/destroy/:id', to: 'users#destroy', as: 'user_destroy'

  resources :topics do
    resources :slides, except: [:index, :show]
  end
  resources :chapters do
    resources :topics do
      resources :slides, only: [:index, :show]
    end
  end
  resources :chapters
  resources :users, only: [:index]
  devise_for :users
  root 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/test'
  get 'static_pages/admin'

end
