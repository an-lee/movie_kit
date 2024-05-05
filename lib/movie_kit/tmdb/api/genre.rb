# frozen_string_literal: true

module MovieKit
  module Tmdb
    class API
      module Genre
        def movie_genres(language: "en-US")
          conn.get("/3/genre/movie/list", { language: }).body
        end

        def tv_genres(language: "en-US")
          conn.get("/3/genre/tv/list", { language: }).body
        end
      end
    end
  end
end
