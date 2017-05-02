Rails.application.routes.draw do

  devise_for :users, controllers: { sessions: 'users/sessions' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :teams
  resources :tasks
  resources :comments
  resources :groupings, only: [:create]

  root to: 'tasks#index'

  delete "/groupings/:team_id", to: 'groupings#destroy', as: :destroy_groupings

end
