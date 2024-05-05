# frozen_string_literal: true

module MovieKit
  module Tmdb
    class API
      module Keyword
        def keyword(id)
          conn.get("/3/keyword/#{id}").body
        end

        def keyword_movies(id, language: "en-US", include_adult: false)
          conn.get("/3/keyword/#{id}/movies", { language:, include_adult: }).body
        end
      end
    end
  end
end
