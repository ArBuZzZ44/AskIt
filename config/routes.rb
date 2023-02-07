Rails.application.routes.draw do
  resource :session, only: %i[new create destroy] # для входа в пользователя в систему, destroy, чтобы пользователь мог выходить

  resources :users, only: %i[new create]

  resources :questions do 
    resources :answers, except: %i[new show] # except - кроме, т.е. исключаем ненужные маршруты
  end

  root "pages#index"
end
