Rails.application.routes.draw do
  root to: 'tasks#index'
  
  get 'tasks/:id/edit', to: 'tasks#edit'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
  
  resources :tasks
  
end