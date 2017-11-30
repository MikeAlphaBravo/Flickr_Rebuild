Rails.application.routes.draw do
  get 'test/new'

  get 'test/create'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users do
    resources :photos
  end

  # resources :users do
  #   resources :comments
  # end
  #
  # resources :users do
  #   resources :tags
  # end

  resources :users do
    resources :favorites
  end

  resources :photos do
    resources :tags
  end

  resources :photos do
    resources :comments
  end

  root :to => 'photos#index'
end
