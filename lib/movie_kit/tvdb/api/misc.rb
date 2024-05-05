# frozen_string_literal: true

module MovieKit
  module Tvdb
    class API
      module Misc
        def character(id)
          conn.get("/v4/characters/#{id}").body
        end

        def content_ratings
          conn.get("/v4/content/ratings").body
        end

        def languages
          conn.get("/v4/languages").body
        end

        def genders
          conn.get("/v4/genders").body
        end

        def genres
          conn.get("/v4/genres").body
        end

        def countries
          conn.get("/v4/countries").body
        end

        def entities
          conn.get("/v4/entities").body
        end

        def inspiration_types
          conn.get("/v4/inspiration/types").body
        end

        def series_statuses
          conn.get("/v4/series/statuses").body
        end

        def source_types
          conn.get("/v4/sources/types").body
        end
      end
    end
  end
end
