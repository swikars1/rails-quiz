Rails.application.routes.draw do
  resources :categories
  resources :question_sets
  resources :questions
  root 'home#index'
  get 'home/index'

  get 'quiz', to: 'questions#quiz', as: 'quiz'
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
