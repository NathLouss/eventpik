class CalendarsController < ApplicationController
  def create

    @events = current_user.wish_list.events
    # itérer sur la liste d'events
    @events.each_with_index do |event, index|
    # si c'est le 1er event on lui attribut le debut de la wish list (start_at)
      if index == 0
        event.start_time = current_user.wish_list.start_at + 10.hour
        event.save
      else
        # si (heure démarrage event previous + (durée activity + 30 mn).formatminutes).récup heure est sup à 18h
        previous = @events[index - 1]
        if previous.next_hour > 18
          # alors on ajoute 1 jour au démarrage de l'event précédent
          # et on lui attribut une heure de démarrage
          year = previous.start_time.year
          month = previous.start_time.month
          day = previous.start_time.day + 1
          event.start_time = DateTime.new(year, month, day, 10, 0)
          event.save
        else
          # sinon on ajoute l'event suivant à la fin l'event précédant et des 30 mn de déplacement
          event.start_time = previous.next_slot
          event.save
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
