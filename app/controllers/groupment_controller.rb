# frozen_string_literal: true

class GroupmentController < ApplicationController
  before_action :authenticate_authentication!

  def index; end

  def show
    @auth_gpmt = Groupment.find(@groupment.groupment_id)
    @member_gpmt = GroupmentAuthentication.where(groupment_id: @groupment.groupment_id)
  end

  def manager_groupment
    @group = GroupmentAuthentication.where(groupment_id: @groupment.groupment_id)
  end

  def order_groupment_quantity
    @products = Product.all
    @member_gpmt = GroupmentAuthentication.where(groupment_id: @groupment.groupment_id)
  end

  def order_groupment_total; end
end