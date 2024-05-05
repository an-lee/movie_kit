# frozen_string_literal: true

module MovieKit
  module Tmdb
    class API
      module Network
        def network(id)
          conn.get("/3/network/#{id}").body
        end

        def network_alternative_names(id)
          conn.get("/3/network/#{id}/alternative_titles").body
        end

        def network_images(id)
          conn.get("/3/network/#{id}/images").body
        end
      end
    end
  end
end
