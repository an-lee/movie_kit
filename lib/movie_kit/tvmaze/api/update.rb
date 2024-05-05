# frozen_string_literal: true

module MovieKit
  module Tvmaze
    class API
      module Update
        def updated_shows(**kwargs)
          conn.get("/updates/shows", { since: kwargs[:since] }.compact).body
        end

        def updated_people(**kwargs)
          conn.get("/updates/people", { since: kwargs[:since] }.compact).body
        end
      end
    end
  end
end
