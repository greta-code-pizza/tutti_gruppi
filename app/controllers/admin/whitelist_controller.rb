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
    @whitelist = Whitelist.create(email: params[:Whitelist][:email])
    if @whitelist.save
      flash[:notice] = 'L\'email a bien été ajouté à la whitelist'
      redirect_to request.referrer
    else
      flash[:notice] = 'Une erreur s\'est produite'
      redirect_to request.referrer || admin_path
    end
  end
end
