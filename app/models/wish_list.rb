class WishList < ApplicationRecord
  belongs_to :user
  has_many :events

  validates :address, :radius, :start_at, :end_at, presence: true, on: :update
end
