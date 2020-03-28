class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :test
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :tell_number, :text])
  end

  def test
    url = request.original_url
    unless url.include?("/users/unique")
      authenticate_user!
    end
  end
end
