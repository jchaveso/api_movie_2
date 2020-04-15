class CinemaController < ApplicationController
  def movies
    @movies = Api::Movie.all
  end

  def bookings
    @bookings = Api::Movie.all
  end
end