Rails.application.routes.draw do
  resources :books

  root 'books#index'

  resources :books do
    member do
      get :delete
    end
  end

  resources :pages do
    member do
      get :delete
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end