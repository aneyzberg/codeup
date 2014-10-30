class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include Pundit

  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password, :password_confirmation, :role) }
  end


  def after_sign_up_path_for(user)
    user.client? ?  client_path : other_path
  end

  def after_sign_in_path_for(user)

    user.client? ? new_project_path : new_user_preference_path
  end
  
end
