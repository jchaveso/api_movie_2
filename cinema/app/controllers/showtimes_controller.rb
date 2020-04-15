# frozen_string_literal: true

class ShowtimesController < ApplicationController
  before_action :set_showtime, only: %i[show update destroy]
  before_action :set_movie

  # GET /showtimes
  def index
    @showtimes = @movie.showtimes

    render json: @showtimes
  end

  # GET /showtimes/1
  def show
    render json: @showtime
  end

  # POST /showtimes
  def create
    @showtime = Showtime.new(showtime_params)
    @showtime.movie = @movie
    if @showtime.save
      render json: @movie, status: :created, location: @movie
    else
      render json: @showtime.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /showtimes/1
  def update
    if @showtime.update(showtime_params)
      render json: @movie
    else
      render json: @showtime.errors, status: :unprocessable_entity
    end
  end

  # DELETE /showtimes/1
  def destroy
    @showtime.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_showtime
    @showtime = Showtime.find(params[:id])
  end

  def set_movie
    @movie = Movie.find(params[:movie_id])
  end

  # Only allow a trusted parameter "white list" through.
  def showtime_params
    params.require(:showtime).permit(:display, :movie_id)
  end
end
