# frozen_string_literal: true

class GroupmentController < ApplicationController
  before_action :authenticate_authentication!

  def index; end

  def show
    @auth_gpmt = Groupment.find(@groupment.id)
  end

  def manager_groupment
    
  end
end