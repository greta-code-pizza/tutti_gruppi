# frozen_string_literal: true

class Authentications::ConfirmationsController < Devise::ConfirmationsController

  def show
    self.resource = resource_class.confirm_by_token(params[:confirmation_token])
    Whitelist.find_or_create_by(email: self.resource.email)
    yield resource if block_given?

    if resource.errors.empty?
      set_flash_message!(:notice, :confirmed)
      respond_with_navigational(resource){ redirect_to after_confirmation_path_for(resource_name, resource) }
    else
      respond_with_navigational(resource.errors, status: :unprocessable_entity){ render :new }
    end
end

  protected

    # The path used after resending confirmation instructions.
    def after_resending_confirmation_instructions_path_for(resource_name)
      is_navigational_format? ? new_session_path(resource_name) : '/'
    end

    private 
    # The path used after confirmation.
    def after_confirmation_path_for(resource_name, resource)
        
      if signed_in?(resource_name)
        signed_in_root_path(resource)
      else
        new_session_path(resource_name)
      end
    end

    def translation_scope
      'devise.confirmations'
    end

end