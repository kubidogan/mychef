class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.save
      redirect_to myprofile_path
    else
      render :new
    end
  end

  # def status(event)
  #   if event.event_time < Date.today
  #     false
  #   else
  #     true
  #   end
  # end

  private

  def event_params
    params.require(:event).permit(
      :name,
      :type,
      :cuisine,
      :status,
      :price,
      :event_time,
      :address,
      :capacity,
      :photo
    )
  end
end
