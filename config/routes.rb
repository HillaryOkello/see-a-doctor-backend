Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :doctors, only: [:index, :show]
  resources :users, only: [:create] do
    resources :appointments
  end
  resources :sessions, only: [:create]
end
