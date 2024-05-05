# frozen_string_literal: true

module MovieKit
  module Tvdb
    class API
      module List
        def lists(page: 0)
          conn.get("/v4/lists", { page: }.compact).body
        end

        def list(id)
          conn.get("/v4/lists/#{id}").body
        end

        def list_extended(id)
          conn.get("/v4/lists/#{id}/extended").body
        end

        def list_translation(id, lang)
          conn.get("/v4/lists/#{id}/translations/#{lang}").body
        end
      end
    end
  end
end
