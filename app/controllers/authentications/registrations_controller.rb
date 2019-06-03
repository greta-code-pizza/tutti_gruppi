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

  def update
    self.resource = resource_class.to_adapter.get!(send(:"current_#{resource_name}").to_key)
    prev_unconfirmed_email = resource.unconfirmed_email if resource.respond_to?(:unconfirmed_email)
    resource_updated = update_resource(resource, account_update_params)
    Whitelist.find_by_email(resource.email)&.destroy
    valid_update(resource_updated, resource, prev_unconfirmed_email)
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

  def valid_update(resource_updated, resource, prev_unconfirmed_email)
    if resource_updated
      set_flash_message_for_update(resource, prev_unconfirmed_email)
      bypass_sign_in resource, scope: resource_name if sign_in_after_change_password?
      respond_with resource, location: after_update_path_for(resource)
    else
      clean_up_passwords resource
      set_minimum_password_length
      respond_with resource
    end
  end
end
