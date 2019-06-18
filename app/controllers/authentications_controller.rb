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

  def update
    @authentication = Authentication.find(params[:id])

    if @authentication.update(params[:groupment])
      flash[:info] = "Pokémon mise à jour"
      redirect_to request.referrer || root_path
    else
      flash[:info] = "Echec de la mise à jour"
      render 'show'
    end
  end

  def edit 

  end
end
