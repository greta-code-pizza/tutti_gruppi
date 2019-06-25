# frozen_string_literal: true

class OrdersController < ApplicationController
  before_action :authenticate_authentication!

  def index
    @orders = Order.page(params[:page]).per(1).where(authentication_id: current_authentication.id)
  end

  def show
    @order = Order.find(params[:id])
    @orderitems = OrderItem.where(order_id: params[:id])
  end

  def new
    @event = Event.find_by(open: Date.today.beginning_of_month, close: Date.today.end_of_month)
    @products = Product.all
    @authentication = Authentication.all
  end

  def create
    @order = Order.create_with_deps(params, current_authentication)
    if @order
      AuthenticationMailer.notify_authentication(current_authentication, @order).deliver
      ManagerMailer.notify_manager(current_authentication, @order).deliver
      flash[:info] = 'success'
    else
      flash[:info] = 'failed'
    end
    redirect_to '/orders'
  end

  private

  def find_order
    @order = Order.find(params[:id])
  end
end
