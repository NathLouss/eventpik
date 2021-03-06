class CalendarsController < ApplicationController
  def create
    @events = current_user.wish_list.events.order(:start_time)
    Event.assign_start_time(@events)
    redirect_to calendar_path(1)
  end

  def show
    @events = current_user.wish_list.events
  end

  private

  def calendar_params
    params.require(:calendar).permit(:events)
  end
end
