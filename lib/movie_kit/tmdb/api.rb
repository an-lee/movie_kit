# frozen_string_literal: true

Dir[File.join(__dir__, "api", "*.rb")].each { |file| require file }

module MovieKit
  module Tmdb
    class API
      include MovieKit::Tmdb::API::Certification
      include MovieKit::Tmdb::API::Change
      include MovieKit::Tmdb::API::Collection
      include MovieKit::Tmdb::API::Company
      include MovieKit::Tmdb::API::Configuration
      include MovieKit::Tmdb::API::Credit
      include MovieKit::Tmdb::API::Discover
      include MovieKit::Tmdb::API::Find
      include MovieKit::Tmdb::API::Genre
      include MovieKit::Tmdb::API::Keyword
      include MovieKit::Tmdb::API::List
      include MovieKit::Tmdb::API::Movie
      include MovieKit::Tmdb::API::Network
      include MovieKit::Tmdb::API::Trending
      include MovieKit::Tmdb::API::Person
      include MovieKit::Tmdb::API::Review
      include MovieKit::Tmdb::API::Search
      include MovieKit::Tmdb::API::Tv
      include MovieKit::Tmdb::API::TvSeason
      include MovieKit::Tmdb::API::TvEpisode
      include MovieKit::Tmdb::API::TvEpisodeGroup
      include MovieKit::Tmdb::API::WatchProvider

      attr_reader :conn

      def initialize(access_token, debug: false)
        @conn = Faraday.new(url: "https://api.themoviedb.org") do |f|
          f.request :json
          f.request :retry
          f.response :json
          f.response :logger if debug
        end

        @conn.headers["Authorization"] = "Bearer #{access_token}"
      end
    end
  end
end
