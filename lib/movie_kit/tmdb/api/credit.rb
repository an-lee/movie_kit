# frozen_string_literal: true

module MovieKit
  module Tmdb
    class API
      module Credit
        def credit(id)
          conn.get("/3/credits/#{id}").body
        end
      end
    end
  end
end
