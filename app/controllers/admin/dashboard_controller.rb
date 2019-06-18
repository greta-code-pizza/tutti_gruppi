# frozen_string_literal: true

class Admin::DashboardController < ApplicationController
  before_action :authenticate_authentication!

  def home; end

  def index
    @authentications = Authentication.all
  end

  def show
    @authentication = Authentication.find(params[:id])
    @order = Order.find(params[:id])
    @orders = Order.where(authentication_id: params[:id])
    @orderitems = OrderItem.where(order_id: params[:id])
  end
  
end
