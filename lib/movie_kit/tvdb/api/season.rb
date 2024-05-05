# frozen_string_literal: true

module MovieKit
  module Tvdb
    class API
      module Season
        def seasons(page: 0)
          conn.get("/v4/seasons", { page: }.compact).body
        end

        def season(id)
          conn.get("/v4/seasons/#{id}").body
        end

        def season_extended(id)
          conn.get("/v4/seasons/#{id}").body
        end

        def season_translation(id, lang)
          conn.get("/v4/seasons/#{id}/translations/#{lang}").body
        end

        def season_types
          conn.get("/v4/season/types").body
        end
      end
    end
  end
end
