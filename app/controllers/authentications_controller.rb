class AuthenticationsController < ApplicationController
  before_action :authenticate_authentication!

  def index; end

  def show; 
  end

  def destroy
    @authentication = Authentication.find(params[:id])

    @groupment.destroy
    @authentication.destroy
    redirect_to root_path
  end

end
