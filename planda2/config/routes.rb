Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :teams, only: [:show, :index, :new, :edit, :create]
  resources :tasks
  resources :comments
  resources :groupings, only: [:create]

  root to: 'tasks#index'

  delete "/groupings/:team_id", to: 'groupings#destroy', as: :destroy_groupings
  delete "/teams/:team_id", to: 'teams#destroy', as: :destroy_teams


end
