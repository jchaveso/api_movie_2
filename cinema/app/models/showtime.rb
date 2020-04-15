class Showtime < ApplicationRecord
  belongs_to :movie
  validates :display, uniqueness: true
  has_many :bookings
end
