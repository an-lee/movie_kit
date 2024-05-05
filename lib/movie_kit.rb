# frozen_string_literal: true

require "faraday"
require "faraday/follow_redirects"
require "faraday/multipart"
require "faraday/retry"
require "json"
require "nokogiri"

require_relative "movie_kit/version"
require_relative "movie_kit/cinemeta"
require_relative "movie_kit/opensubtitles"
require_relative "movie_kit/tmdb"
require_relative "movie_kit/tvdb"
require_relative "movie_kit/tvmaze"
require_relative "movie_kit/user_agents"

module MovieKit
  class Error < StandardError; end
  # Your code goes here...
end
