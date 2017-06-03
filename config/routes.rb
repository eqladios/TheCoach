Rails.application.routes.draw do
  resources :topics do
    resources :slides, except: [:index, :show]
  end
  resources :chapters do
    resources :topics do
      resources :slides, only: [:index, :show]
    end
  end
  resources :chapters
  devise_for :users
  root 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/test'
end
