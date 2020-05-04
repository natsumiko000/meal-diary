Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  resources :foods
  resources :diary_comments
  resources :diary_categories
  resources :diaries
  resources :categories
end
