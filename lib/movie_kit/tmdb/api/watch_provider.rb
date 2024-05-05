# frozen_string_literal: true

module MovieKit
  module Tmdb
    class API
      module WatchProvider
        def watch_providers_regions(**kwargs)
          conn.get("/3/watch/providers/regions", kwargs.compact).body
        end

        def watch_providers_movie(**kwargs)
          conn.get("/3/watch/providers/movie", kwargs.compact).body
        end

        def watch_providers_tv(**kwargs)
          conn.get("/3/watch/providers/tv", kwargs.compact).body
        end
      end
    end
  end
end
