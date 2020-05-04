Rails.application.routes.draw do

	root 'home#top'

	devise_for :admins, controllers: {
		sessions:      'admins/sessions',
		passwords:     'admins/passwords',
		registrations: 'admins/registrations'
	}

	devise_for :users, controllers: {
		sessions:      'users/sessions',
		passwords:     'users/passwords',
		registrations: 'users/registrations'
	}

	resources :users, only: [:index, :show, :edit, :update] do
		member do
			get 'confirm'
		end
	end
	resources :foods, only: [:index, :show]
	resources :diary_categories
	resources :diaries, only: [:show, :edit, :update, :destroy] do
		member do
			get 'data'
		end
		resource :diary_comments, only: [:create, :destroy]
	end
	resources :categories, only: [:index, :show]

	namespace :admin do
		get 'home/top'
		resources :users
		resources :foods
		resources :diary_categories
		resources :diaries
		resources :diary_comments
		resources :categories
	end
end
