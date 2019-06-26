# frozen_string_literal: true

class OrdersController < ApplicationController
  before_action :authenticate_authentication!

  def index
    @orders = Order.page(params[:page]).per(1).where(authentication_id: current_authentication.id)
  end

  def show
    @order = Order.find(params[:id])
    @orderitems = OrderItem.where(order_id: params[:id])

    respond_to do |format|
      format.html
      format.pdf do
        pdf = OrderPdf.new(@order, @orderitems)
        send_data pdf.render,
                  filename: "Tutti Gruppi - Commande :\##{@order.id}.pdf",
                  page_size: 'A4',
                  template: 'app/views/orders/invoice.html.erb',
                  layout: 'pdf.html',
                  type: 'application/pdf',
                  disposition: 'inline',
                  position: 'center'
      end
    end
  end

  def new
    @order = Order.new
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
    redirect_to request.referrer
  end

  private

  def find_order
    @order = Order.find(params[:id])
  end
end
