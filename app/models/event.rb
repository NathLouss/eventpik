class Event < ApplicationRecord
  belongs_to :wish_list
  belongs_to :activity

  # validates :start_time, presence: true
  def self.assign_start_time(events)
    #events = self.all.to_a.sort_by(&:position)
    events.each_with_index do |event, index|
      # si c'est le 1er event on lui attribut le debut de la wish list (start_at)
      if index == 0
        event.start_time = event.wish_list.start_at + 10.hours
      else
        # si (heure démarrage event previous + (durée activity + 30 mn).formatminutes).récup heure est sup à 18h
        previous = events[index - 1]
        if previous.next_hour > 18
          # alors on ajoute 1 jour au démarrage de l'event précédent
          # et on lui attribut une heure de démarrage
          year = previous.start_time.year
          month = previous.start_time.month
          day = previous.start_time.day + 1
          event.start_time = DateTime.new(year, month, day, 10, 0)
        else
          # sinon on ajoute l'event suivant à la fin l'event précédant et des 30 mn de déplacement
          event.start_time = previous.next_slot
        end
      end
      event.save
    end
  end

  def next_hour
   return self.next_slot.hour + self.next_slot.min * 1.0/60
  end

  def next_slot
   self.start_time + (self.activity.duration + 30).minute
  end
end
