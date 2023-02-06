class ApplicationController < ActionController::Base
  include Pagy::Backend
  include ErrorHandling

  private
  
  def current_user
    @current_user ||= User.find_by(id: session[:user_id]).decorate if session[:user_id].present? # задекорировали, теперь метод можем использовать
  end

  def user_signed_in?
    current_user.present?
  end

  helper_method :current_user, :user_signed_in? # делаем хелперы из методов, чтобы они были доступны в представлениях
end
