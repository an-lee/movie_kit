# frozen_string_literal: true

module MovieKit
  module Tmdb
    class API
      module Company
        def company(id, **kwargs)
          conn.get("/3/company/#{id}", kwargs.compact).body
        end

        def company_extended(id)
          append_to_response = %w[alternative_names images].join(",")
          company id, append_to_response:
        end

        def company_alternative_names(id)
          conn.get("/3/company/#{id}/alternative_names").body
        end

        def company_images(id)
          conn.get("/3/company/#{id}/images").body
        end
      end
    end
  end
end
