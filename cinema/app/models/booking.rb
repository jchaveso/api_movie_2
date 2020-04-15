class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :showtime

  validates :exceed_capacity

  def exceed_capacity
    errors.add(:showtime, "count shouldn't be more than 10") if showtime.bookings.count > 11
  end
end
