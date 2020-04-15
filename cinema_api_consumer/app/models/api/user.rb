# frozen_string_literal: true

module Api
  class User < Base
    include Json::Extractor

    attr_accessor :document, :full_name, :email, :mobile_phone


    MAX_LIMIT = 10

    def self.find(id)
      response = Movie.get("users/#{id}")
      Movie.new(response)
    end

    def self.all
      where('users')
    end

    def save
      Request.post_to('users', as_json.to_json)
    end

    #
    # def initialize(args)
    #  super(args)
    # end
  end
end