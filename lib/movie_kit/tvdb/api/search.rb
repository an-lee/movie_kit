# frozen_string_literal: true

module MovieKit
  module Tvdb
    class API
      module Search
        # rubocop:disable Metrics/AbcSize, Metrics/MethodLength
        def search(**kwargs)
          conn.get "/v4/search" do |req|
            req.params = {
              q: kwargs[:q],
              type: kwargs[:type],
              year: kwargs[:year],
              company: kwargs[:company],
              country: kwargs[:country],
              director: kwargs[:director],
              language: kwargs[:language],
              primaryType: kwargs[:primary_type],
              network: kwargs[:network],
              remote_id: kwargs[:remote_id],
              offset: kwargs[:offset],
              limit: kwargs[:limit]
            }.compact
          end.body
        end
        # rubocop:enable Metrics/AbcSize, Metrics/MethodLength

        def search_by_remote_id(id)
          conn.get("/v4/search/remoteid/#{id}").body
        end
      end
    end
  end
end
