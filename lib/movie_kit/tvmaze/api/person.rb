# frozen_string_literal: true

module MovieKit
  module Tvmaze
    class API
      module Person
        def person(id, **kwargs)
          conn.get("/persons/#{id}", { embed: kwargs[:embed] }.compact).body
        end

        def people(page = 0)
          conn.get("/people", { page: }).body
        end

        def person_cast_credits(id, **kwargs)
          conn.get("/persons/#{id}/castcredits", { embed: kwargs[:embed] }).body
        end

        def person_crew_credits(id, **kwargs)
          conn.get("/persons/#{id}/crewcredits", { embed: kwargs[:embed] }).body
        end

        def person_guest_cast_credits(id, **kwargs)
          conn.get("/persons/#{id}/guestcastcredits", { embed: kwargs[:embed] }).body
        end
      end
    end
  end
end
