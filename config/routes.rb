Rails.application.routes.draw do
  get 'welcome/index'

  resources :teams do
    resources :users
  end

  resources :games do
    resources :teams
  end

  resources :teams do
    resources :rankings
  end

  resources :users do
    resources :stats
  end


  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
