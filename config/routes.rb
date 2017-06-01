Rails.application.routes.draw do
  resources :topics
  resources :chapters
  devise_for :users
  root 'static_pages#home'
  get 'static_pages/home'
end
