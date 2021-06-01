class CalendarsController < ApplicationController
  def create

    @events = current_user.wish_list.events
    # itérer sur la liste d'events
    @events.each_with_index do |event, index|
    # si c'est le 1er event on lui attribut le debut de la wish list (start_at)
      if @events[0]
        event.start_time = current_user.wish_list.start_at.hour + 10
      else
        # si (heure démarrage event previous + (durée activity + 30 mn).formatminutes).récup heure est sup à 18h
        if (@events[index - 1].start_time + (@events[index - 1].activity.duration + 30).minutes).hour > 18
          # alors on ajoute 1 jour au démarrage de l'event précédent
          event.start_time = @events[index - 1].start_time + 1.day
          # et on lui attribut une heure de démarrage
          event.start_time.hour = 10
        else
          # sinon on ajoute l'event suivant à la fin l'event précédant et des 30 mn de déplacement
          event.start_time = @events[index - 1].start_time + (@events[index - 1].activity.duration + 30).minutes
        end
      end
    end
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
