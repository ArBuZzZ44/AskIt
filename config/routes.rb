Rails.application.routes.draw do
  resources :questions, only: [:index, :new, :edit, :create, :update, :destroy]

  root "pages#index"
end
