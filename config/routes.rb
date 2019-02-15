Rails.application.routes.draw do

  resources :todos, only: [:index, :show] do
    delete 'uncomplete', to: 'user_todos#destroy'
    resources :user_todos, only: :create
  end

  devise_for :users

  root 'todos#index'
end
