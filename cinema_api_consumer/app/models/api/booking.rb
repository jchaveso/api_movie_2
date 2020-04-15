# frozen_string_literal: true

module Api
  class Booking < Base
    include Json::Extractor
    attr_accessor :user_id, :showtime_id
    MAX_LIMIT = 10

    def self.find(id)
      response = Booking.get("bookings/#{id}")
      Booking.new(response)
    end

    def self.all
      where('bookings')
    end

    def save
      Request.post_to('bookings', as_json.to_json)
    end

    #
    # def initialize(args)
    #  super(args)
    # end
  end
end
