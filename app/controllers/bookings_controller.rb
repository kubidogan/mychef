class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.event = Event.find(params[:event_id])
    if @booking.save
      redirect_to booking_confirmation_path(@event)
    else
      render :new
    end
  end

  def confirmation
    @booking = Booking.find(params[:booking_id])

  private

  def booking_params
    params.require(:booking).permit(:user_id, :event_id)
  end
end
