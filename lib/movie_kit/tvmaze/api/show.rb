# frozen_string_literal: true

module MovieKit
  module Tvmaze
    class API
      module Show
        def show(id, **kwargs)
          conn.get("/shows/#{id}", { embed: kwargs[:embed] }.compact).body
        end

        def shows(page = 0)
          conn.get("/shows", { page: }).body
        end

        def show_episodes(id, **kwargs)
          conn.get("/shows/#{id}/episodes", { specials: kwargs[:specials] }).body
        end

        def show_alternative_lists(id)
          conn.get("/shows/#{id}/alternatelists").body
        end

        def alternative_list(id, **kwargs)
          conn.get("/alternatelists/#{id}", { embed: kwargs[:embed] }).body
        end

        def alternative_episodes(id, **kwargs)
          conn.get("/alternatelists/#{id}/alternateepisodes", { embed: kwargs[:embed] }).body
        end

        def episode_by_number(id, season, number)
          conn.get("/shows/#{id}/episodebynumber", { season:, number: }).body
        end

        def episode_by_date(id, season, date)
          conn.get("/shows/#{id}/episodebydate", { season:, date: }).body
        end

        def show_seasons(id)
          conn.get("/shows/#{id}/seasons").body
        end

        def season_episodes(id, **kwargs)
          conn.get("/seasons/#{id}/episodes", { embed: kwargs[:embed] }).body
        end

        def show_cast(id)
          conn.get("/shows/#{id}/cast").body
        end

        def show_crew(id)
          conn.get("/shows/#{id}/crew").body
        end

        def show_akas(id)
          conn.get("/shows/#{id}/akas").body
        end

        def show_images(id)
          conn.get("/shows/#{id}/images").body
        end
      end
    end
  end
end
