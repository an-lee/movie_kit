# frozen_string_literal: true

module MovieKit
  module Tmdb
    class API
      module TvSeason
        def tv_season(tv_id, season, **kwargs)
          conn.get("/3/tv/#{tv_id}/season/#{season}", kwargs.compact).body
        end

        def tv_season_extended(id, number)
          append_to_response =
            %w[
              alternative_titles
              credits
              external_ids
              images
              translations
              videos
            ]
          tv_season id, number, append_to_response: append_to_response.join(",")
        end

        def tv_season_aggregate_credits(tv_id, season, **kwargs)
          conn.get("/3/tv/#{tv_id}/season/#{season}/aggregate_credits", kwargs.compact).body
        end

        def tv_season_changes(id, **kwargs)
          conn.get("/3/tv/season/#{id}/changes", kwargs.compact).body
        end

        def tv_season_credits(tv_id, season, **kwargs)
          conn.get("/3/tv/#{tv_id}/season/#{season}/credits", kwargs.compact).body
        end

        def tv_season_external_ids(tv_id, season)
          conn.get("/3/tv/#{tv_id}/season/#{season}/external_ids").body
        end

        def tv_season_images(tv_id, season, **kwargs)
          conn.get("/3/tv/#{tv_id}/season/#{season}/images", kwargs.compact).body
        end

        def tv_season_translations(tv_id, season)
          conn.get("/3/tv/#{tv_id}/season/#{season}/translations").body
        end

        def tv_season_videos(tv_id, season, **kwargs)
          conn.get("/3/tv/#{tv_id}/season/#{season}/videos", kwargs.compact).body
        end
      end
    end
  end
end
