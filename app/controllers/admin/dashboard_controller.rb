# frozen_string_literal: true

class Admin::DashboardController < ApplicationController
  before_action :authenticate_authentication!

  def home; end

  def index
    @authentications = Authentication.page(params[:page]).per(4).order(:userable_type)
  end

  def show
    @authentication = Authentication.find(params[:id])
    @orders = Order.where(authentication_id: params[:id]).page(params[:page]).per(3)
    @groupment = GroupmentAuthentication.where(authentication_id: params[:id])
  end

  def edit
    @authentication = Authentication.find(params[:id])
  end
end
