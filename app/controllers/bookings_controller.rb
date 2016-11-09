class BookingsController < ApplicationController

# Booking connects event to guest. The only thing the user can edit is the status

  #before_action :booking_params, only: [:create, :update]
  #before_action :find_booking, except: [:new]
  before_action :find_user
  before_action :find_event

  def new
    @booking = Booking.new
    #@oooking_with_id = Booking.pluck[:id]
  end

  def create
    @booking = Booking.new(params[:booking])
    @booking.user = @user
    @booking.event = @event
    @booking.save!

    if @booking.save
      redirect_to event_path(@event)
    else
      raise 'Booking error'
    end

  end

  def edit
  end

  # def update
  #   @booking.update(booking_params)
  #   # redirect_to bookings_path(@event)

  #   #only status can be updated by host
  #   #pending - accepted - rejected
  #   #in form_for in events/.html.erb host can pick one
  #   #???????????????
  #   #or, is it all on event page???
  # end

  def destroy

    #SUPERPSEUDOCODE:

    # if Time.delete_button_pressed < 24 hours
    #   flash 'Are you sure you want to cancel? There is no refund'
    #   @booking.destroy if yes
    # elsif (Time.delete_button_pressed >= 24 hours) && (Time.delete_button_pressed <= 36 hours)
    #   flash 'Are you sure you want to cancel? You only get a 50% refund'
    #   @booking.destroy if yes
    # else
    #   flash 'Are you sure you want to cancel?'
    # end

    # redirect_to user_path(@user)

    @booking.destroy
    redirect_to event_path(@event)
  end

  private

  # def booking_params
  #   params.require(:booking).permit(:status)
  # end

  def find_booking
    @booking = Booking.find(params[:id])
  end

  def find_user
    @user = User.find(current_user)
  end

  def find_event
    @event = Event.find(params[:event_id])
  end

end
