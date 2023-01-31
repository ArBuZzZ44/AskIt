Rails.application.routes.draw do
  resources :questions, only: [:index, :new, :edit, :create]

  root "pages#index"
end
