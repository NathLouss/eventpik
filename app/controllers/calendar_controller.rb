class CalendarController < ApplicationController
  def create
    redirect_to calendar_path
  end

  def show
    @events = current_user.wish_list.events
  end

  private

  def calendar_params
    params.require(:calendar).permit(:events)
  end
end
