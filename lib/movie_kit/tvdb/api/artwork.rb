# frozen_string_literal: true

module MovieKit
  module Tvdb
    class API
      module Artwork
        def artwork(id)
          conn.get("/v4/artworks/#{id}").body
        end

        def artwork_extended(id)
          conn.get("/v4/artworks/#{id}/#{extended}").body
        end

        def artwork_types
          conn.get("/v4/artwork/types").body
        end

        def artwork_statuses
          conn.get("/v4/artwork/statuses").body
        end
      end
    end
  end
end
