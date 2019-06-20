class ApplicationController < ActionController::Base
  before_action :configure_devise_parameters, if: :devise_controller?
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :groupment_current_authentication, if: :current_authentication

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

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update) do |u|
      u.permit(
        :firstname,
        :email,
        :password,
        :password_confirmation,
        :current_password
      )
    end
  end

  private

  def groupment_current_authentication
    @groupment = GroupmentAuthentication.find_by_authentication_id(current_authentication.id)
  end

  def remove_groupment(id)
    GroupmentAuthentication.find_by_authentication_id(id).destroy
  end

  def remove_role(id)
    target = Authentication.find(id)
    case target.userable_type
    when 'Admin'
      Admin.find(target.userable_id).destroy
    when 'Manager'
      Manager.find(target.userable_id).destroy
    when 'Member'
      Member.find(target.userable_id).destroy
    end
  end

end
