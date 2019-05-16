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
    @order = Order.create(consumer_id: current_consumer.id)
    @order_item = Order.create_with_deps(params, @order)
    if @order
      ConsumerMailer.notify_consumer(current_consumer.id, @order).deliver
      ManagerMailer.notify_manager(current_consumer.id, @order).deliver
      flash[:info] = 'success'
      redirect_to request.referrer
    else
      flash[:info] = 'failed'
      render 'new'
    end
  end
end
