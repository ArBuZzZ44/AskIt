Rails.application.routes.draw do
  resources :users, only: %i[new create]

  resources :questions do 
    resources :answers, except: %i[new show] # except - кроме, т.е. исключаем ненужные маршруты
  end

  root "pages#index"
end
