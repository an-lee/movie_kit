# frozen_string_literal: true

Dir[File.join(__dir__, "api", "*.rb")].each { |file| require file }

module MovieKit
  module Tvdb
    class API
      TOKEN_CACHE_KEY = "_tvdb_token_cache_key"

      include MovieKit::Tvdb::API::Artwork
      include MovieKit::Tvdb::API::Award
      include MovieKit::Tvdb::API::Company
      include MovieKit::Tvdb::API::Episode
      include MovieKit::Tvdb::API::List
      include MovieKit::Tvdb::API::Misc
      include MovieKit::Tvdb::API::Movie
      include MovieKit::Tvdb::API::People
      include MovieKit::Tvdb::API::Season
      include MovieKit::Tvdb::API::Search
      include MovieKit::Tvdb::API::Series

      attr_reader :conn
      attr_accessor :token

      def initialize(apikey:, pin:, debug: false)
        @conn =
          Faraday.new(url: "https://api4.thetvdb.com") do |f|
            f.request :json
            f.request :retry
            f.response :json
            f.response :logger if debug
          end

        @token = login(apikey, pin)["data"]["token"] if @token.blank?

        @conn.headers["Authorization"] = @token
      end
    end
  end
end
