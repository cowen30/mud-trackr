Rails.application.routes.draw do
  root "home#index"

  resources :events
  get 'about', to: 'home#about'

  resources :users
  resources :participants

  get 'verify-email', to: 'users#verify'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'users#new'
  get 'logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
