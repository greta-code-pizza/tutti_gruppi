# frozen_string_literal: true

class Admin::EventsController < ApplicationController

  def index_events
    @events = Event.all
  end

  def new_events; end

  def create_events
    Event.create name:params[:name], open:params[:Event][:open], close:params[:Event][:close], delivery:params[:Event][:delivery]
    flash[:notice] = "L'événement a bien été créer"
    redirect_to admin_events_index_path
  end

  def edit_events
    @event = Event.find(params[:id])
  end

  def update_events
    @event = Event.find(params[:id])
    if @event.update(
      name: params[:name],
      open: params[:Event][:open],
      close: params[:Event][:close],
      delivery: params[:Event][:delivery]
    )
      flash[:notice] = "L'événement a bien été édité"
    else
      flash[:notice] = 'Une erreur est survenue'
    end
    redirect_to admin_events_index_path
  end

  def destroy_events
    Event.find(params[:id]).destroy
    flash[:notice] = "L'événement a été supprimé avec succés"
    redirect_to '/orders'
  end

end
