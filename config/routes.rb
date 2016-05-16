Rails.application.routes.draw do
  resources :members
  devise_for :users, controllers: { registrations: "registrations"}

  get "/pages/:page" => "pages#show"

  devise_scope :user do
    get "/login" => "devise/sessions#new"
    delete "/logout" => "devise/sessions#destroy"

    authenticated :user do
      root 'members#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  root 'members#index'

end
