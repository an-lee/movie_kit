# frozen_string_literal: true

module MovieKit
  module Tmdb
    class API
      module Find
        def find(id, external_source:, language: "en-US")
          conn.get("/3/find/#{id}", { external_source:, language: }).body
        end
      end
    end
  end
end
