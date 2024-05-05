# frozen_string_literal: true

module MovieKit
  module Opensubtitles
    class API
      module Subtitles
        SEARCH_AVAILABLE_PARAMS =
          %i[
            ai_translated
            episode_number
            foreign_parts_only
            hearing_impaired
            id
            imdb_id
            languages
            machine_translated
            moviehash
            moviehash_match
            order_by
            order_direction
            page
            parent_feature_id
            parent_imdb_id
            query
            season_number
            tmdb_id
            trusted_sources
            type
            user_id
            year
          ].freeze
        def subtitles(**kwargs)
          raise ArgumentError, "Invalid params" unless (kwargs.keys - SEARCH_AVAILABLE_PARAMS).empty?

          response = conn.get("/api/v1/subtitles", **kwargs)
          response.body
        end
        alias search subtitles
      end
    end
  end
end
