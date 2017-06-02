Rails.application.routes.draw do
  resources :slides
  resources :chapters do
    resources :topics
  end
  #resources :topics
  resources :chapters
  devise_for :users
  root 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/test'
end
