class Event < ApplicationRecord
  belongs_to :wish_list
  belongs_to :activity

  # validates :start_time, presence: true
  def next_hour
   return self.next_slot.hour + self.next_slot.min * 1.0/60
  end

  def next_slot
   self.start_time + (self.activity.duration + 30).minute
  end
end
