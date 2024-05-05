# frozen_string_literal: true

module MovieKit
  module Tmdb
    class API
      module Certification
        def certifications_movie
          conn.get("/3/certification/movie/list").body
        end

        def certifications_tv
          conn.get("/3/certification/tv/list").body
        end
      end
    end
  end
end
