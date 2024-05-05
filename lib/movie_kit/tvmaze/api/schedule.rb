# frozen_string_literal: true

module MovieKit
  module Tvmaze
    class API
      module Schedule
        def schedule(**kwargs)
          conn.get("/schedule", { country: kwargs[:country], date: kwargs[:date] }).body
        end

        def schedule_web(**kwargs)
          conn.get("/schedule/web", { country: kwargs[:country], date: kwargs[:date] }).body
        end

        def schedule_full
          conn.get("/schedule/full").body
        end
      end
    end
  end
end
