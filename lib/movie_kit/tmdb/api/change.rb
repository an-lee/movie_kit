# frozen_string_literal: true

module MovieKit
  module Tmdb
    class API
      module Change
        def changed_movies(**kwargs)
          conn.get "/3/movie/changes" do |req|
            req.params = {
              start_date: kwargs[:start_date],
              end_date: kwargs[:end_date],
              page: kwargs[:page]
            }.compact
          end.body
        end

        def changed_tv(**kwargs)
          conn.get "/3/tv/changes" do |req|
            req.params = {
              start_date: kwargs[:start_date],
              end_date: kwargs[:end_date],
              page: kwargs[:page]
            }.compact
          end.body
        end

        def changed_persons(**kwargs)
          conn.get "/3/person/changes" do |req|
            req.params = {
              start_date: kwargs[:start_date],
              end_date: kwargs[:end_date],
              page: kwargs[:page]
            }.compact
          end.body
        end
      end
    end
  end
end
