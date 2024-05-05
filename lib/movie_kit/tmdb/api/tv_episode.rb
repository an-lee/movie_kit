# frozen_string_literal: true

module MovieKit
  module Tmdb
    class API
      module TvEpisode
        def tv_episode(tv_id, season, episode, **kwargs)
          conn.get("/3/tv/#{tv_id}/season/#{season}/episode/#{episode}", kwargs.compact).body
        end

        def tv_episode_extended(tv_id, season, episode)
          append_to_response =
            %w[
              credits
              external_ids
              images
              translations
              videos
            ]
          tv_episode tv_id, season, episode, append_to_response: append_to_response.join(",")
        end

        def tv_episode_changes(id, **kwargs)
          conn.get("/3/tv/episode/#{id}/changes", kwargs.compact).body
        end

        def tv_episode_credits(tv_id, season, episode, **kwargs)
          conn.get("/3/tv/#{tv_id}/season/#{season}/episode/#{episode}/credits", kwargs.compact).body
        end

        def tv_episode_external_ids(tv_id, season, episode)
          conn.get("/3/tv/#{tv_id}/season/#{season}/episode/#{episode}/external_ids").body
        end

        def tv_episode_images(tv_id, season, episode, **kwargs)
          conn.get("/3/tv/#{tv_id}/season/#{season}/episode/#{episode}/images", kwargs.compact).body
        end

        def tv_episode_translations(tv_id, season, episode)
          conn.get("/3/tv/#{tv_id}/season/#{season}/episode/#{episode}/translations", kwargs.compact).body
        end

        def tv_episode_videos(tv_id, _season, episode, **kwargs)
          conn.get("/3/tv/#{tv_id}/season/#{number}/episode/#{episode}/videos", kwargs.compact).body
        end
      end
    end
  end
end
