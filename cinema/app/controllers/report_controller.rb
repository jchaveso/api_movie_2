class ReportController < ApplicationController
  def listing
    @movies = Movie.all

    render json: @movies
  end

  def bookings
    @bookings = Booking.all

    render json: @bookings
  end
end
