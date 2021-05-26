class Activity < ApplicationRecord
  has_many :events, dependent: :destroy
  has_one_attached :photo

  validates :title, :address, :description, :duration, presence: true
  validates :duration, numericality: { only_integer: true }
  validates :rating, inclusion: {in: (0..5)}
  validates :category, inclusion: {in: %w(sport culture gastronomie) }

end
