class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  ensure_security_headers # See more: https://github.com/twitter/secureheaders

  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  def current_user
    super&.decorate
  end

  def respond_to_js(object)
    respond_to do |format|
      format.html { redirect_to object }
      format.js
    end
  end

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :bio])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :bio])
    end
end
