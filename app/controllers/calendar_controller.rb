class CalendarController < ApplicationController
  def create
    # itérer sur la liste d'events
    @events.each do |event|
    # si c'est le 1er event on lui attribut le debut de la wish list (start_at)
      if event.first 
        event.start_time = wish_list.start_at
      else
        # si (heure démarrage event previous + (durée activity + 30 mn).formatminutes).récup heure est sup à 18h
        if (event.previous.start_time + (event.previous.activity.duration + 30).minutes).hour > 18
          # alors on ajoute 1 jour au démarrage de l'event précédent
          event.start_time = event.previous.start_time + 1.day
          # et on lui attribut une heure de démarrage
          event.start_time.hour = 10
        else
          # sinon on ajoute l'event suivant à la fin l'event précédant et des 30 mn de déplacement
          event.start_time = event.previous.start_time + (event.previous.activity.duration + 30).minutes
        end
      end
    end
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
