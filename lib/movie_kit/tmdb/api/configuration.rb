# frozen_string_literal: true

module MovieKit
  module Tmdb
    class API
      module Configuration
        def config
          conn.get("/3/configuration").body
        end

        def countries
          conn.get("/3/configuration/countries").body
        end

        def jobs
          conn.get("/3/configuration/jobs").body
        end

        def languages
          conn.get("/3/configuration/languages").body
        end

        def primary_translations
          conn.get("/3/configuration/primary_translations").body
        end

        def timezones
          conn.get("/3/configuration/timezones").body
        end
      end
    end
  end
end
