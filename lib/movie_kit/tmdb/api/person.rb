# frozen_string_literal: true

module MovieKit
  module Tmdb
    class API
      module Person
        def person(id, **kwargs)
          conn.get("/3/person/#{id}", kwargs.compact).body
        end

        def person_extended(id)
          append_to_response =
            %w[
              external_ids
              images
              tagged_images
              translations
            ]
          person id, append_to_response: append_to_response.join(",")
        end

        def person_changes(id, **kwargs)
          conn.get("/3/person/#{id}/changes", kwargs.compact).body
        end

        def person_movie_credits(id, **kwargs)
          conn.get("/3/person/#{id}/movie_credits", kwargs.compact).body
        end

        def person_tv_credits(id, **kwargs)
          conn.get("/3/person/#{id}/tv_credits", kwargs.compact).body
        end

        def person_combined_credits(id, **kwargs)
          conn.get("/3/person/#{id}/combined_credits", kwargs.compact).body
        end

        def person_external_ids(id)
          conn.get("/3/person/#{id}/external_ids").body
        end

        def person_images(id)
          conn.get("/3/person/#{id}/images").body
        end

        def person_tagged_images(id)
          conn.get("/3/person/#{id}/tagged_images").body
        end

        def person_translations(id, **kwargs)
          conn.get("/3/person/#{id}/translations", kwargs.compact).body
        end

        def person_latest(id, **kwargs)
          conn.get("/3/person/#{id}/latest", kwargs.compact).body
        end

        def person_popular(id, **kwargs)
          conn.get("/3/person/#{id}/popular", kwargs.compact).body
        end
      end
    end
  end
end
