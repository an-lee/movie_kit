# frozen_string_literal: true

module MovieKit
  module Tvdb
    class API
      module Episode
        def episodes(page: 0)
          conn.get("/v4/episodes", { page: }.compact).body
        end

        def episode(id)
          conn.get("/v4/episodes/#{id}").body
        end

        def episode_extended(id, meta: "translations")
          conn.get("/v4/episodes/#{id}/extended", { meta: }).body
        end

        def episode_translation(id, lang)
          conn.get("/v4/episodes/#{id}/translations/#{lang}").body
        end
      end
    end
  end
end
