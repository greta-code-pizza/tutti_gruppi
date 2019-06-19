# frozen_string_literal: true

class Admin::DashboardController < ApplicationController
  before_action :authenticate_authentication!

  def home; end

  def index
    # @groupment = Groupment.all
    @authentications = Authentication.page(params[:page]).per(4).order(:userable_type)
  end

  def show
    @authentication = Authentication.find(params[:id])
    @order = Order.find(params[:id])
    @orders = Order.where(authentication_id: params[:id]).page(params[:page]).per(3)
    @groupment = GroupmentAuthentication.where(authentication_id: params[:id])
  end

  def edit
    @authentication = Authentication.find(params[:id])
  end

  def index_products
    @products = Product.all
  end

  def edit_products
    @product = Product.find(params[:id])
  end

  def update_product
    @product = Product.find(params[:id])

    if @product.update(
      name: params[:name],
      price: params[:price],
      package: params[:package],
      weight_type: params[:weight_type],
      weight_value: params[:weight_value]
    )
      flash[:notice] = `Le produit #{@product.id} a bien été édité`
    else
      flash[:notice] = 'Une erreur est survennue'
    end
    redirect_to request.referrer
  end

  def form_new_product
  end

  def add_new_product
    binding.pry
    @product = Product.create(
      name: params[:name],
      package: params[:package],
      price: params[:price],
      weight_type: params[:weight_type],
      weight_value: params[:weight_value]
    )
    if @product.save
      flash[:notice] = 'Le produit a bien été ajouté'
      redirect_to request.referrer
    else
      flash[:notice] = 'Une erreur s\'est produite'
      redirect_to request.referrer || admin_path
    end

  end
end
