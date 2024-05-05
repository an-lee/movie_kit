# frozen_string_literal: true

module MovieKit
  module Tmdb
    class API
      module Collection
        def collection(**kwargs)
          conn.get("/3/collection/#{id}", { language: kwargs[:language] }).body
        end

        def collection_images(**kwargs)
          conn.get("/3/collection/#{id}/images", { language: kwargs[:language] }).body
        end

        def collection_translations(**kwargs)
          conn.get("/3/collection/#{id}/translations", { language: kwargs[:language] }).body
        end
      end
    end
  end
end
