Rails.application.routes.draw do
	root 'home#top'
	get 'home/about'
  	
	devise_for :admins, controllers: {
		sessions: 'admins/sessions',
		passwords:     'admins/passwords',
		registrations: 'admins/registrations'
	}

	devise_for :users, controllers: {
		sessions:      'users/sessions',
		passwords:     'users/passwords',
		registrations: 'users/registrations'
	}

	resources :users, only: [:show, :edit, :update] do
		member do
			get 'confirm'
		end
	end
	resources :diaries, only: [:create, :update, :destroy] do
		member do
			get 'data'
		end
		collection do
			get 'record'
		end
	end
	resources :categories, only: [:index, :show]
	resources :inquiries, only: [:new, :create]

	namespace :admins do
		get 'home/top'
		resources :users, only: [:index]
		resources :foods[:index, :new, :create, :edit, :update, :destroy]
		resources :diaries[:index, :show, :edit, :update, :destroy]
		resources :categories[:index, :new, :create, :edit, :update, :destroy]
		resources :inquiries[:index, :show, :destroy]
	end
end
