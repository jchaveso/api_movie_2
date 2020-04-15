# frozen_string_literal: true

module Api
  class Movie < Base
    include Json::Extractor
    attr_accessor :name, :description, :url
    MAX_LIMIT = 10
    def self.find(id)
      response = Movie.get("movies/#{id}")
      Movie.new(response)
    end

    def self.all
      where('movies')
    end

    def save
      Request.post_to('movies', as_json.to_json)
    end
    #
    # def initialize(args)
    #  super(args)
    # end
  end
end