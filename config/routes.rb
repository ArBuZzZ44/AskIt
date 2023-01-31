Rails.application.routes.draw do
  resources :questions, only: [:index, :new, :edit, :create, :update]

  root "pages#index"
end
