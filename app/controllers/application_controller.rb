class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :authenticate_consultant!

  before_filter :update_sanitized_params, if: :devise_controller?

  protected

  def update_sanitized_params
  	devise_parameter_sanitizer.for(:account_update) {|u| u.permit(:email, :first_name, :last_name, :encrypted_password, :password_confirmation)}
	end

  def after_sign_in_path_for(consultant)
  	consultant_path(consultant)
  end
end
