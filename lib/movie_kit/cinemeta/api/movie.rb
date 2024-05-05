# frozen_string_literal: true

module MovieKit
  module Cinemeta
    class API
      module Movie
        def movie(imdb_id)
          conn.get("/meta/movie/#{imdb_id}.json").body
        end

        def movie_catalog(**options)
          id = options[:id] || "top"
          genre = options[:genre] || ""
          skip = options[:skip] || 0
          path = "/catalog/movie/#{id}/genre=#{genre}&skip=#{skip}.json"
          conn.get(path).body
        end

        def movie_top(skip = 0)
          movie_catalog(id: "top", skip:)
        end
      end
    end
  end
end
