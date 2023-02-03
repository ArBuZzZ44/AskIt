Rails.application.routes.draw do
  resources :questions do 
    resources :answers, except: %i[new show] # except - кроме, т.е. исключаем ненужные маршруты
  end

  root "pages#index"
end
