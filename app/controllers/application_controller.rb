class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:age,:gender,:nickname])
    update_attrs = [:name, :age, :gender, :password, :password_confirmation, :current_password,:nickname]
    devise_parameter_sanitizer.permit(:account_update, keys: update_attrs)
  end
end