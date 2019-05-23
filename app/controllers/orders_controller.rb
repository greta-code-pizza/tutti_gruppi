class OrdersController < ApplicationController
  before_action :authenticate_consumer!
  before_action :find_order, only: [:show]
  
  def index
    @orders = Order.all
  end

  def show
    @orderitems = OrderItem.where(order_id: params[:id])
  end

  def new
    @order = Order.new
    @products = Product.all
    @consumer = Consumer.all
  end

  def create
    @order = Order.create(consumer: current_consumer)
    @order_item = Order.create_with_deps(params, @order)
    if @order
      ConsumerMailer.notify_consumer(current_consumer, @order).deliver
      ManagerMailer.notify_manager(current_consumer, @order).deliver
      flash[:info] = 'success'
      redirect_to request.referrer
    else
      flash[:info] = 'failed'
      render 'new'
    end
  end

  private

  def find_order
    @order = Order.find(params[:id])
  end
end
