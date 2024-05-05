# frozen_string_literal: true

module MovieKit
  module Tvdb
    class API
      module Company
        def companies(page: 0)
          conn.get("/v4/companies", { page: }.compact).body
        end

        def company(id)
          conn.get("/v4/companies/#{id}").body
        end

        def company_types
          conn.get("/v4/companies/types").body
        end
      end
    end
  end
end
