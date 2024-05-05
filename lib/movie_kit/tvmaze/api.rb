# frozen_string_literal: true

Dir[File.join(__dir__, "api", "*.rb")].each { |file| require file }

module MovieKit
  module Tvmaze
    class API
      include MovieKit::Tvmaze::API::Search
      include MovieKit::Tvmaze::API::Schedule
      include MovieKit::Tvmaze::API::Show
      include MovieKit::Tvmaze::API::Episode
      include MovieKit::Tvmaze::API::Person
      include MovieKit::Tvmaze::API::Update

      attr_reader :conn

      def initialize(debug: false)
        @conn =
          Faraday.new(
            url: "https://api.tvmaze.com"
          ) do |f|
            f.request :json
            f.request :retry
            f.response :json
            f.response :follow_redirects
            f.response :logger if debug
          end
      end
    end
  end
end
