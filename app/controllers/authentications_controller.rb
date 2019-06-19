class AuthenticationsController < ApplicationController
  before_action :authenticate_authentication!

  def index; end

  def show; end

  def destroy
    @authentication = Authentication.find(params[:id])
    auth_order = Order.find_by_authentication_id(params[:id])
    auth_order.update authentication_id: 2
    remove_groupment(params[:id])
    remove_role(params[:id])
    @authentication.destroy
    redirect_to request.referrer || root_path
  end

  def edit
    @authentication = Authentication.find(params[:id])
    auth_gpmt = GroupmentAuthentication.find_by_authentication_id(@authentication.id)
    auth_gpmt ? @groupment = Groupment.find(auth_gpmt.groupment_id) : @groupment = Groupment.find(1) 
  end

  def update
    # binding.pry
    auth_gpmt = GroupmentAuthentication.find_by_authentication_id(params[:id])
    auth_gpmt.update groupment_id: params[:Groupment][:groupment_id]

    redirect_to root_path
  end

  # meta programming, update the authentication role
  [Admin, Manager, Member].each do |role|
    define_method("up#{role}") {
      remove_role(params[:id])
      user = role.create
      auth = Authentication.find(params[:id])
      auth.userable_type
      auth.update userable_id: user.id, userable_type: role.to_s
      redirect_to request.referrer
    }
  end

  # def up_admin
  # target = Authentication.find(params[:id])
      # if target.userable_type == "Admin"
      #   Admin.find(target.userable_id).destroy
      # elsif target.userable_type == "Manager"
      #   Manager.find(target.userable_id).destroy
      # else
      #   Member.find(target.userable_id).destroy
      # end

  #   user = Admin.create
  #   auth = Authentication.find(params[:id])
  #   auth.userable_type
  #   auth.update userable_id: user.id, userable_type: "Admin"
  #   redirect_to root_path
  # end

  # def up_manager
  # target = Authentication.find(params[:id])
      # if target.userable_type == "Admin"
      #   Admin.find(target.userable_id).destroy
      # elsif target.userable_type == "Manager"
      #   Manager.find(target.userable_id).destroy
      # else
      #   Member.find(target.userable_id).destroy
      # end

  #   user = Manager.create
  #   auth = Authentication.find(params[:id])
  #   auth.userable_type
  #   auth.update userable_id: user.id, userable_type: "Manager"
  #   redirect_to root_path
  # end

  # def up_member
  # target = Authentication.find(params[:id])
      # if target.userable_type == "Admin"
      #   Admin.find(target.userable_id).destroy
      # elsif target.userable_type == "Manager"
      #   Manager.find(target.userable_id).destroy
      # else
      #   Member.find(target.userable_id).destroy
      # end

  #   user = Member.create
  #   auth = Authentication.find(params[:id])
  #   auth.userable_type
  #   auth.update userable_id: user.id, userable_type: "Member"
  #   redirect_to root_path
  # end

end
