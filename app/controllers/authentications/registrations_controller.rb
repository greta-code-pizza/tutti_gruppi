# frozen_string_literal: true

class Authentications::RegistrationsController < Devise::RegistrationsController
  # POST /resource
  def create
    if Whitelist.find_by_email(params[:authentication][:email])
      member = Member.create
      build_resource(sign_up_params)
      resource.userable_id = member.id
      resource.save
      # yield resource if block_given?
      valid_authentication(resource)
    else
      flash[:notice] = 'An error occured'
      redirect_to root_path
    end
  end

  private

  def valid_authentication(resource)
    if resource.persisted?
      if resource.active_for_authentication?
        set_flash_message! :notice, :signed_up
        sign_up(resource_name, resource)
        respond_with resource, location: after_sign_up_path_for(resource)
      else
        set_flash_message! :notice, :"signed_up_but_#{resource.inactive_message}"
        expire_data_after_sign_in!
        respond_with resource, location: after_inactive_sign_up_path_for(resource)
      end
    else
      clean_up_passwords resource
      set_minimum_password_length
      respond_with resource
    end
  end
end
