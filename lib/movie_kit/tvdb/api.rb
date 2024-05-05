# frozen_string_literal: true

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

      def initialize(debug: false)
        @conn =
          Faraday.new(url: "https://api4.thetvdb.com") do |f|
            f.request :json
            f.request :retry
            f.response :json
            f.response :logger if debug
          end

        @token = Rails.cache.fetch TOKEN_CACHE_KEY
        refresh_token if @token.blank?

        @conn.headers["Authorization"] = @token
      end

      def refresh_token
        @token = login["data"]["token"]
        raise InvalidTokenError if @token.blank?

        Rails.cache.write TOKEN_CACHE_KEY, @token, expires_in: 7.days
        @token
      end

      def login
        conn.post "/v4/login" do |req|
          req.body = {
            apikey: Rails.application.credentials.dig(:tvdb, :apikey),
            pin: Rails.application.credentials.dig(:tvdb, :pin)
          }.to_json
        end.body
      end
    end
  end
end
