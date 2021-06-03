class EventsController < ApplicationController
  def create
   @event = Event.new(activity_id: params[:activity_id])
   @event.wish_list = current_user.wish_list
   @event.start_time = Date.today
    if @event.save
      #redirect_to wish_list_path(current_user.wish_list)
      redirect_to activities_path
    else
      render 'activities/show'
    end
  end

  def update
    render json: { success: true }
    @event = Event.find(params[:id])
    @wish_list = @event.wish_list
    @events = @wish_list.events.order(:start_time).to_a
    @events.delete_at(params[:oldPosition].to_i)
    @events.insert(params[:newPosition].to_i, @event)
    Event.assign_start_time(@events)
    #redirect_to request.referrer
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to request.referrer
  end

end
