class OrdersController < ApplicationController
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
    @consumer = Consumer.all
  end

  def create
    @order = Order.create_with_deps(params)
    if @order
      ConsumerMailer.notify_consumer(params[:order][:consumer_id]).deliver
      flash[:info] = 'success'
      redirect_to request.referrer
    else
      flash[:info] = 'failed'
      render 'new'
    end
  end
end
