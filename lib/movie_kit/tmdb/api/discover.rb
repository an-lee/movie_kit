# frozen_string_literal: true

module MovieKit
  module Tmdb
    class API
      module Discover
        # https://developers.themoviedb.org/3/discover/movie-discover
        def discover_movie(**kwargs)
          conn.get("/3/discover/movie", kwargs.compact).body
        end

        # https://developers.themoviedb.org/3/discover/tv-discover
        def discover_tv(**kwargs)
          conn.get("/3/discover/tv", kwargs.compact).body
        end
      end
    end
  end
end
