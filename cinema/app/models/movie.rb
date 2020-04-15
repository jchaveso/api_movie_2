class Movie < ApplicationRecord
  has_many :showtimes
  has_many :bookings
end
