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

  def show
    # @users = User.find(params[:id])
    @events = Event.all
    @markers = @events.geocoded.map.each do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        info_window: render_to_string(partial: "info_window", locals: { event: event }),
        image_url: helpers.asset_url("mapboxmarker.png")
      }
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to myprofile_path
  end

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
