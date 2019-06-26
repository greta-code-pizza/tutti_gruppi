# frozen_string_literal: true

class Admin::ProductsController < ApplicationController
  def index_products
    @products = Product.page(params[:page]).per(19)
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
      redirect_to admin_index_produits_path
    else
      flash[:notice] = 'Une erreur est survenue'
      redirect_to admin_index_produits_path
    end
  end

  def form_new_product; end

  def add_new_product
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
      flash[:alert] = 'Une erreur s\'est produite'
      redirect_to admin_dashboard_path
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to admin_index_produits_path
  end

  %w[available unavailable].each do |status|
    define_method("#{status}") {
      Product.find(params[:id]).update available:false if status == 'unavailable'
      Product.find(params[:id]).update available:true if status == 'available'
      redirect_to request.referrer
    }
  end
end