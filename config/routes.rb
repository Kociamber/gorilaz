Rails.application.routes.draw do
  resources :members
  devise_for :users
  root 'members#index'

  devise_scope :user do
    authenticated :user do
      root 'members#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

end
