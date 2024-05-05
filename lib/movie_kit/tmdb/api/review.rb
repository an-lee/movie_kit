# frozen_string_literal: true

module MovieKit
  module Tmdb
    class API
      module Review
        def review(id)
          conn.get("/3/review/#{id}").body
        end
      end
    end
  end
end
