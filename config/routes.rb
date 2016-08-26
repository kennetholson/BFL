Rails.application.routes.draw do
  get 'welcome/index'

  resources :teams do
    resources :users
  end

  resources :games do
    resources :teams
  end





  resources :stats

  resources :rankings

  resources :sessions

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
