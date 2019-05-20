# frozen_string_literal: true

class Consumers::RegistrationsController < Devise::RegistrationsController
  # POST /resource
  def create
    if Whitelist.find_by_email(params[:consumer][:email])
      super
    else
      flash[:notice] = 'An error occured'
      redirect_to root_path
    end
  end
end
