# frozen_string_literal: true

class OrdersController < ApplicationController
  before_action :authenticate_authentication!

  def index
    @orders = Order.page(params[:page]).per(5).where(authentication_id: current_authentication.id)
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
    month = Date.today.beginning_of_month..Date.today.end_of_month
    @event = Event.find_by(open: month, close: month)
    @products = Product.all
    @authentication = Authentication.all
  end

  def create
    @order = Order.create_with_deps(params, current_authentication)
    if @order
      AuthenticationMailer.notify_authentication(current_authentication, @order).deliver
      ManagerMailer.notify_manager(current_authentication, @order).deliver
      flash[:notice] = 'La commande a bien été enregistré'
    else
      flash[:info] = 'Une erreur est survenue !'
    end
    redirect_to '/orders'
  end

  def edit
    @order = Order.find(params[:id])
    @products = Product.all
  end

  def destroy
    OrderItem.where(order_id: params[:id]).destroy_all
    Order.find(params[:id]).destroy
    flash[:notice] = 'La commande a été supprimé avec succès'
    redirect_to "/orders"
  end

  private

  def find_order
    @order = Order.find(params[:id])
  end
end
