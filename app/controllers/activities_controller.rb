class ActivitiesController < ApplicationController
  
  def index
    if params[:activity].present?
      @activities = Activity.near(params[:address],10)
    else
      @activities = Activity.all
    end
    @markers = @activities.geocoded.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude,
        info_window: render_to_string(partial: "info_window", locals: { activity: activity })
      }
    end
  end

  def show
    @activity = Activity.find(params[:id])
  end

  private

  def params_activity
    params.require(:activity).permit(:title, :category, :address, :description, :website_url, :duration, :rating, :photo)
  end
end
