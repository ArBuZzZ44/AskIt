class SessionsController < ApplicationController
  before_action :require_no_authentication only: %i[new create]
  before_action :require_authentication, only: :destroy

  def new
  end

  def create
    user = User.find_by email: params[:email]
    # добавляем амперсант, если user будет nil, то данное условие сразу обратиться в ложное и мы уйдем в ветку else
    if user&.authenticate(params[:password]) # метод authenticate добавляется благодаря has_secure_password в моделт User. принимает строку, конвертирует ее в хеш и сравнивает с хешем в бд
      sign_in user
      flash[:success] = "Welcome back, #{current_user.name_or_email}!"
      redirect_to root_path
    else
      flash[:warning] = "Incorrect email and/or password"
      redirect_to new_session_path
    end
  end

  def destroy
    sign_out
    flash[:success] = "See you later!"
    redirect_to root_path
  end
end
