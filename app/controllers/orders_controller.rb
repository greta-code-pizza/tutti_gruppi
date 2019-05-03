class OrdersController < ApplicationController
  def new
    @order = Order.new
    @products = Product.all
    @consumer = Consumer.all
  end

  def create
    @order = Order.create_with_deps(params)
    if @order
      flash[:info] = 'success'
      redirect_to request.referrer
    else
      flash[:info] = 'failed'
      render 'new'
    end
  end

end