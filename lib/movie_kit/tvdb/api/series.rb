# frozen_string_literal: true

module MovieKit
  module Tvdb
    class API
      module Series
        def series(page: 0)
          conn.get("/v4/series", { page: }.compact).body
        end

        def series_by_id(id)
          conn.get("/v4/series/#{id}").body
        end

        def series_extended(id, meta: "translations", short: false)
          conn.get("/v4/series/#{id}", { meta:, short: }.compact).body
        end

        def series_artworks(id, lang: "", type: "")
          conn.get("/v4/series/#{id}/artworks", { lang:, type: }.compact).body
        end

        def series_next_aired(id)
          conn.get("/v4/series/#{id}/nextAired").body
        end

        def series_episodes(id, **kwargs)
          conn.get "/v4/series/#{id}/episodes/#{kwargs[:seaon_type] || "default"}" do |req|
            req.params = {
              page: kwargs[:page] || 0,
              season: kwargs[:season] || 0,
              episodeNumber: kwargs[:episode] || 0,
              airDate: kwargs[:air_date]
            }
          end.body
        end

        def series_episodes_by_lang(id, lang, **kwargs)
          conn.get "/v4/series/#{id}/episodes/#{kwargs[:seaon_type] || "default"}/#{lang}" do |req|
            req.params = {
              page: kwargs[:page] || 0
            }
          end.body
        end

        # rubocop:disable Metrics/MethodLength
        def series_filter(**kwargs)
          conn.get "/v4/series/filter" do |req|
            req.params = {
              company: kwargs[:company],
              contentRating: kwargs[:content_rating],
              country: kwargs[:country],
              genre: kwargs[:genre],
              lang: kwargs[:lang],
              sort: kwargs[:sort],
              sortType: kwargs[:sort_type],
              status: kwargs[:status],
              year: kwargs[:year],
              page: kwargs[:page]
            }.compact
          end.body
        end
        # rubocop:enable Metrics/MethodLength

        def series_by_slug(slug)
          conn.get("/v4/series/slug/#{slug}").body
        end

        def series_translation(id, lang)
          conn.get("/v4/series/#{id}/translations/#{lang}").body
        end

        def series_statuses
          conn.get("/v4/series/statuses").body
        end
      end
    end
  end
end
