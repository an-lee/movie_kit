# frozen_string_literal: true

module MovieKit
  module Tmdb
    class API
      module Tv
        def tv(id, **kwargs)
          conn.get("/3/tv/#{id}", kwargs.compact).body
        end

        # rubocop:disable Metrics/MethodLength
        def tv_extended(id)
          append_to_response =
            %w[
              alternative_titles
              content_ratings
              credits
              external_ids
              images
              keywords
              translations
              videos
              watch_providers
            ]
          tv id, append_to_response: append_to_response.join(",")
        end
        # rubocop:enable Metrics/MethodLength

        def tv_aggregate_credits(id, **kwargs)
          conn.get("/3/tv/#{id}/aggregate_credits", kwargs.compact).body
        end

        def tv_alternative_titles(id, **kwargs)
          conn.get("/3/tv/#{id}/alternative_titles", kwargs.compact).body
        end

        def tv_changes(id, **kwargs)
          conn.get("/3/tv/#{id}/changes", kwargs.compact).body
        end

        def tv_content_ratings(id, **kwargs)
          conn.get("/3/tv/#{id}/content_ratings", kwargs.compact).body
        end

        def tv_credits(id, **kwargs)
          conn.get("/3/tv/#{id}/credits", kwargs.compact).body
        end

        def tv_episode_groups(id, **kwargs)
          conn.get("/3/tv/#{id}/episode_groups", kwargs.compact).body
        end

        def tv_external_ids(id)
          conn.get("/3/tv/#{id}/external_ids").body
        end

        def tv_images(id, **kwargs)
          conn.get("/3/tv/#{id}/images", kwargs.compact).body
        end

        def tv_keywords(id)
          conn.get("/3/tv/#{id}/keywords").body
        end

        def tv_recommendations(id, **kwargs)
          conn.get("/3/tv/#{id}/recommendations", kwargs.compact).body
        end

        def tv_reviews(id, **kwargs)
          conn.get("/3/tv/#{id}/reviews", kwargs.compact).body
        end

        def tv_screened_theatrically(id, **kwargs)
          conn.get("/3/tv/#{id}/screened_theatrically", kwargs.compact).body
        end

        def tv_similar(id, **kwargs)
          conn.get("/3/tv/#{id}/similar", kwargs.compact).body
        end

        def tv_translations(id)
          conn.get("/3/tv/#{id}/translations").body
        end

        def tv_videos(id, **kwargs)
          conn.get("/3/tv/#{id}/videos", kwargs.compact).body
        end

        def tv_watch_providers(id)
          conn.get("/3/tv/#{id}/watch/providers").body
        end

        def tv_latest(id, **kwargs)
          conn.get("/3/tv/#{id}/latest", kwargs.compact).body
        end

        def tv_airing_today(**kwargs)
          conn.get("/3/tv/airing_today", kwargs.compact).body
        end

        def tv_on_the_air(**kwargs)
          conn.get("/3/tv/on_the_air", kwargs.compact).body
        end

        def tv_popular(**kwargs)
          conn.get("/3/tv/popular", kwargs.compact).body
        end

        def tv_top_rated(**kwargs)
          conn.get("/3/tv/top_rated", kwargs.compact).body
        end
      end
    end
  end
end
