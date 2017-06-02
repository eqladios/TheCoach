Rails.application.routes.draw do
  resources :topics do
    resources :slides
  end
  resources :chapters do
    resources :topics
  end
  resources :chapters
  devise_for :users
  root 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/test'
end
