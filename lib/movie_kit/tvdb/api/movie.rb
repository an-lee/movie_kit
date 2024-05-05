# frozen_string_literal: true

module MovieKit
  module Tvdb
    class API
      module Movie
        def movies(page: 0)
          conn.get("/v4/movies", { page: }.compact).body
        end

        def movie(id)
          conn.get("/v4/movies/#{id}").body
        end

        def movie_extended(id, meta: "translations", short: false)
          conn.get("/v4/movies/#{id}", { meta:, short: }.compact).body
        end

        # rubocop:disable Metrics/MethodLength
        def movies_filter(**kwargs)
          conn.get "/v4/movies/filter" do |req|
            req.params = {
              company: kwargs[:company],
              contentRating: kwargs[:content_rating],
              country: kwargs[:country],
              genre: kwargs[:genre],
              lang: kwargs[:lang],
              sort: kwargs[:sort],
              status: kwargs[:status],
              year: kwargs[:year],
              page: kwargs[:page]
            }.compact
          end.body
        end
        # rubocop:enable Metrics/MethodLength

        def movie_by_slug(slug)
          conn.get("/v4/movies/slug/#{slug}").body
        end

        def movie_translation(id, lang)
          conn.get("/v4/movies/#{id}/translations/#{lang}").body
        end

        def movie_statuses
          conn.get("/v4/movies/statuses").body
        end
      end
    end
  end
end
