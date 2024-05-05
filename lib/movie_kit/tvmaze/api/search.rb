# frozen_string_literal: true

module MovieKit
  module Tvmaze
    class API
      module Search
        def search(query)
          conn.get("/search/shows", { q: query }).body
        end

        def singlesearch(query)
          conn.get("/signlesearch/shows", { q: query }).body
        end

        def lookup(**kwargs)
          conn.get("/lookup/shows", { thetvdb: kwargs[:tvdb], imdb: kwargs[:imdb] }.compact).body
        end

        def search_people(query)
          conn.get("/search/people", { q: query }).body
        end
      end
    end
  end
end
