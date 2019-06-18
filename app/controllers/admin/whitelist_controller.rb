# frozen_string_literal: true

class Admin::WhitelistController < ApplicationController
  before_action :authenticate_authentication!

  def home; end

  def index
    @whitelist = Whitelist.all
  end

  def new
    @whitelist = Whitelist.new
  end

  def create
    Whitelist.create email: params[:email]
    # if @whitelist.save
    #   flash[:notice] = 'L\'email a bien été ajouté à la whitelist'
    #   redirect_to request_referrer
    # else
    #   render 'new'
    # end
  end

  # private

  # def whitelist_params
  #   params.require(:whitelist).permit(:email)
  # end
end
