class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_parmitted_parameters, if: :devise_controller?

  def configure_parmitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

end
