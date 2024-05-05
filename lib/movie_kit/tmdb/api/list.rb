# frozen_string_literal: true

module MovieKit
  module Tmdb
    class API
      module List
        def list(id, **kwargs)
          conn.get "/4/list/#{id}" do |req|
            req.params = {
              page: kwargs[:page],
              language: kwargs[:language],
              sort_by: kwargs[:sort_by]
            }.compact
          end.body
        end
      end
    end
  end
end
