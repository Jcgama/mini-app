Rails.application.routes.draw do
  devise_for :users
  get 'user/show', to: "user#show"
  get 'list/show', to: 'list#show'
  get 'user/show/:id', to: 'user#search'
  get 'user/index', to: 'user#index'
  devise_scope :user do
    authenticated :user do
      root 'user#show', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  
end
