# frozen_string_literal: true

class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show update destroy]

  def show; end

  def new
    @booking = Api::Booking.new
  end

  def create
    @booking = Api::Booking.new(booking_params)

    if @booking.save
      render json: @booking, status: :created
    else
      render json: @booking.errors, status: :unprocessable_entity
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_booking
    @booking = Booking.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def booking_params
    params.require(:booking).permit(:user_id, :showtime_id)
  end
end
