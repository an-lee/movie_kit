# frozen_string_literal: true

module MovieKit
  module Cinemeta
    class API
      module Series
        def series(imdb_id)
          conn.get("/meta/series/#{imdb_id}.json").body
        end

        def series_catalog(**options)
          id = options[:id] || "top"
          genre = options[:genre] || ""
          skip = options[:skip] || 0
          path = "/catalog/series/#{id}/genre=#{genre}&skip=#{skip}.json"
          conn.get(path).body
        end

        def series_top(skip = 0)
          series_catalog(id: "top", skip:)
        end
      end
    end
  end
end
