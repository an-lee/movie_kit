# frozen_string_literal: true

module MovieKit
  module Tvdb
    class API
      module Award
        def awards
          conn.get("/v4/awards").body
        end

        def award(id)
          conn.get("/v4/awards/#{id}").body
        end

        def award_extended(id)
          conn.get("/v4/awards/#{id}/extended").body
        end

        def award_category(id)
          conn.get("/v4/awards/categories/#{id}").body
        end

        def award_category_extended(id)
          conn.get("/v4/awards/categories/#{id}/extended").body
        end
      end
    end
  end
end
