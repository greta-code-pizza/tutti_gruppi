class ApplicationController < ActionController::Base
  before_action :configure_devise_parameters, if: :devise_controller?

  def configure_devise_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |member|
      member.permit(
        :firstname,
        :lastname,
        :email,
        :password,
        :password_confirmation,
        :userable_type,
        :userable_id
      )
    end
  end
end
