# frozen_string_literal: true

Dir[File.join(__dir__, "api", "*.rb")].each { |file| require file }

module MovieKit
  module Cinemeta
    class API
      include MovieKit::Cinemeta::API::Movie
      include MovieKit::Cinemeta::API::Series

      attr_reader :conn

      def initialize(debug: false)
        @conn =
          Faraday.new(url: "https://v3-cinemeta.strem.io") do |f|
            f.request :json
            f.request :retry
            f.response :json
            f.response :follow_redirects
            f.response :logger if debug
          end

        @conn.headers["User-Agent"] = UserAgents.random
      end
    end
  end
end
