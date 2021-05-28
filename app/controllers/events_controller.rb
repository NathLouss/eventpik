class EventsController < ApplicationController
  def create
   @event = Event.new(activity_id: params[:activity_id])
   @event.wish_list = current_user.wish_list
   @event.start_at = Date.today
    if @event.save!
      redirect_to wish_list_path(current_user.wish_list)
    else
      render 'activities/show'
    end
  end
end
