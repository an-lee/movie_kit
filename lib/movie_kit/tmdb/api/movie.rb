# frozen_string_literal: true

module MovieKit
  module Tmdb
    class API
      module Movie
        def movie(id, **kwargs)
          conn.get("/3/movie/#{id}", kwargs.compact).body
        end

        # rubocop:disable Metrics/MethodLength
        def movie_extended(id)
          append_to_response =
            %w[
              alternative_titles
              credits
              external_ids
              images
              keywords
              release_dates
              translations
              videos
              watch/providers
            ]
          movie id, append_to_response: append_to_response.join(",")
        end
        # rubocop:enable Metrics/MethodLength

        def movie_alternative_titles(id, **kwargs)
          conn.get("/3/movie/#{id}/alternative_titles", kwargs.compact).body
        end

        def movie_changes(id, **kwargs)
          conn.get("/3/movie/#{id}/changes", kwargs.compact).body
        end

        def movie_credits(id, **kwargs)
          conn.get("/3/movie/#{id}/credits", kwargs.compact).body
        end

        def movie_external_ids(id)
          conn.get("/3/movie/#{id}/external_ids").body
        end

        def movie_images(id, **kwargs)
          conn.get("/3/movie/#{id}/images", kwargs.compact).body
        end

        def movie_keywords(id)
          conn.get("/3/movie/#{id}/keywords").body
        end

        def movie_lists(id, **kwargs)
          conn.get("/3/movie/#{id}/lists", kwargs.compact).body
        end

        def movie_recommendations(id, **kwargs)
          conn.get("/3/movie/#{id}/recommendations", kwargs.compact).body
        end

        def movie_release_dates(id)
          conn.get("/3/movie/#{id}/release_dates").body
        end

        def movie_reviews(id, **kwargs)
          conn.get("/3/movie/#{id}/reviews", kwargs.compact).body
        end

        def movie_similar(id, **kwargs)
          conn.get("/3/movie/#{id}/similar", kwargs.compact).body
        end

        def movie_translations(id)
          conn.get("/3/movie/#{id}/translations").body
        end

        def movie_videos(id, **kwargs)
          conn.get("/3/movie/#{id}/videos", kwargs.compact).body
        end

        def movie_watch_providers(id)
          conn.get("/3/movie/#{id}/watch/providers").body
        end

        def movie_latest(id, **kwargs)
          conn.get("/3/movie/#{id}/latest", kwargs.compact).body
        end

        def movie_now_playing(**kwargs)
          conn.get("/3/movie/now_playing", kwargs.compact).body
        end

        def movie_popular(**kwargs)
          conn.get("/3/movie/popular", kwargs.compact).body
        end

        def movie_top_rated(**kwargs)
          conn.get("/3/movie/top_rated", kwargs.compact).body
        end

        def movie_upcoming(**kwargs)
          conn.get("/3/movie/upcoming", kwargs.compact).body
        end
      end
    end
  end
end
