class ApplicationController < ActionController::Base
  before_filter :configure_permitted_parameters, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  @user = User.new

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :fname
    devise_parameter_sanitizer.for(:sign_up) << :lname
    devise_parameter_sanitizer.for(:sign_up) << :role
  end

  def after_sign_up_path_for(resource)
      signed_in_root_path(resource)
  end

end
