Rails.application.routes.draw do
	
  resources :foods
  resources :diary_comments
  resources :diary_categories
  resources :diaries
  resources :categories
end
