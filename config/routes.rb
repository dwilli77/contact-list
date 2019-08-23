Rails.application.routes.draw do
  devise_for :users, path: 'families', only: :sessions
  # root 'families#index'
  resources :families

  unauthenticated do
    devise_scope :user do
      root :to => 'devise/sessions#new'
    end
  end

  authenticated do
    root :to => 'families#index'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
