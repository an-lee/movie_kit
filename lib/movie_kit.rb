# frozen_string_literal: true

require_relative "movie_kit/version"
require_relative "movie_kit/cinemeta"
require_relative "movie_kit/opensubtitles"
require_relative "movie_kit/tmdb"
require_relative "movie_kit/tvdb"
require_relative "movie_kit/tvmaze"

module MovieKit
  class Error < StandardError; end
  # Your code goes here...
end
