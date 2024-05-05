# frozen_string_literal: true

module MovieKit
  module Tmdb
    class API
      module TvEpisodeGroup
        def tv_episode_group(id, **kwargs)
          conn.get("/3/tv/episode_group/#{id}", kwargs.compact).body
        end
      end
    end
  end
end
