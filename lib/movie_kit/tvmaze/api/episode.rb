# frozen_string_literal: true

module MovieKit
  module Tvmaze
    class API
      module Episode
        def episode(id, **kwargs)
          conn.get("/episodes/#{id}", { embed: kwargs[:embed] }.compact).body
        end

        def episode_guest_cast(id)
          conn.get("/episodes/#{id}/guestcast").body
        end

        def episode_guest_crew(id)
          conn.get("/episodes/#{id}/guestcrew").body
        end
      end
    end
  end
end
