# frozen_string_literal: true

module MovieKit
  module Tmdb
    class API
      module Search
        def search_company(query, page: 1)
          conn.get("/3/search/company", { query:, page: }).body
        end

        def search_collection(query, language: "en-US", page: 1)
          conn.get("/3/search/collection", { query:, language:, page: }).body
        end

        def search_keyword(query, page: 1)
          conn.get("/3/search/keyword", { query:, page: }).body
        end

        def search_movie(query, **kwargs)
          conn.get("/3/search/movie", { query: }.merge(kwargs)).body
        end

        def search_multi(query, **kwargs)
          conn.get("/3/search/multi", { query: }.merge(kwargs)).body
        end

        def search_person(query, **kwargs)
          conn.get("/3/search/person", { query: }.merge(kwargs)).body
        end

        def search_tv(query, **kwargs)
          conn.get("/3/search/tv", { query: }.merge(kwargs)).body
        end
      end
    end
  end
end
