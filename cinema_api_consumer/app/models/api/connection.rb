require 'faraday'
require 'json'
module Api
  class Connection
    BASE = 'http://localhost:3000'
    def self.api
      Faraday.new(url: BASE) do |faraday|
        faraday.response :logger
        faraday.adapter Faraday.default_adapter
        faraday.headers['Content-Type'] = 'application/json'
      end
    end
  end
end
