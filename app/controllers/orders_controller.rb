class OrdersController < ApplicationController
  before_action :authenticate_authentication!
  
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
    @orderitems = OrderItem.where(order_id: params[:id])
  end

  def new
    @order = Order.new
    @products = Product.all
    @authentication = Authentication.all
  end

  def create
    @order = Order.create(authentication_id: current_authentication.id)
    @order_item = Order.create_with_deps(params, @order)
    if @order
      AuthenticationMailer.notify_authentication(current_authentication.id, @order).deliver
      ManagerMailer.notify_manager(current_authentication.id, @order).deliver
      flash[:info] = 'success'
      redirect_to request.referrer
    else
      flash[:info] = 'failed'
      render 'new'
    end
  end
end
