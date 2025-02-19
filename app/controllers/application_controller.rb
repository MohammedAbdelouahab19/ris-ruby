class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # before_action :require_login, only: [:index, :new]

  protected

  def require_login
    if current_user.logged_in?
    else
      redirect_to login_path
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :title, :email, :title, :username])
  end
end