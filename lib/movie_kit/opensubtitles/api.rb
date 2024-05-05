# frozen_string_literal: true

Dir[File.join(__dir__, "api", "*.rb")].each { |file| require file }

module MovieKit
  module Opensubtitles
    class API
      attr_reader :conn

      include MovieKit::Opensubtitles::API::Subtitles
      include MovieKit::Opensubtitles::API::Download

      def initialize(api_key, debug: false)
        @conn = Faraday.new(url: "https://api.opensubtitles.com") do |f|
          f.request :json
          f.request :retry
          f.response :json
          f.response :follow_redirects
          f.response :logger if debug
        end

        @conn.headers["Api-Key"] = api_key
      end
    end
  end
end
