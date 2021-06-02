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
    @event_new_position = Event.find(params[:newPosition])
    @event.update(params[:newPosition])
    # new position / old position / id
    # récupérer id d'un event
    # remplacer/updater old position avec le new position
    # indirectement position autres event doit être updater
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to request.referrer
  end

end
