class EventsController < ApplicationController

  # add when routes are known: redirect_to
  # add when models are finished: other variables

  before_action :event_params, only: [:create, :update]

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.save
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
  end

  private

  def event_params
    params.require(:event).permit(:name, :description, :price, :max_guests, :event_address, :user_id)
  end

end
