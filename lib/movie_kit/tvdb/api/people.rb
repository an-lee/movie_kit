# frozen_string_literal: true

module MovieKit
  module Tvdb
    class API
      module People
        def people(page: 0)
          conn.get("/v4/people", { page: }.compact).body
        end

        def person(id)
          conn.get("/v4/people/#{id}").body
        end

        def people_extended(id, meta: "translations", short: false)
          conn.get("/v4/people/#{id}", { meta:, short: }.compact).body
        end

        def people_translation(id, lang)
          conn.get("/v4/people/#{id}/translations/#{lang}").body
        end

        def people_types
          conn.get("/v4/people/types").body
        end
      end
    end
  end
end
