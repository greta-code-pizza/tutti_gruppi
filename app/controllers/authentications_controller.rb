class AuthenticationsController < ApplicationController
  before_action :authenticate_authentication!

  def index; end

  def show; end

  def destroy
    @authentication = Authentication.find(params[:id])
    @groupment.destroy
    @authentication.destroy
    redirect_to root_path
  end

  def edit
    @authentication = Authentication.find(params[:id])
    auth_gpmt = GroupmentAuthentication.find_by_authentication_id(@authentication.id)
    auth_gpmt ? @groupment = Groupment.find(auth_gpmt.groupment_id) : @groupment = Groupment.find(1) 
  end

  def update
    # binding.pry
    auth_gpmt = GroupmentAuthentication.find_by_authentication_id(params[:id])
    auth_gpmt.update groupment_id: params[:Groupment][:groupment_id]

    redirect_to root_path
  end

end
