class AuthenticationsController < ApplicationController
  before_action :authenticate_authentication!

  def index; end

  def show; end

end
