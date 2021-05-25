class Event < ApplicationRecord
  belongs_to :wish_list
  belongs_to :activity

  validates :start_at, presence: true
end
