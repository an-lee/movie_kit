# frozen_string_literal: true

module MovieKit
  module Tmdb
    class API
      module Trending
        # type: %w[all movie tv person]
        # time: %w[day week]
        def trending(type: "all", time: "day")
          conn.get("/3/trending/#{type}/#{time}").body
        end
      end
    end
  end
end
