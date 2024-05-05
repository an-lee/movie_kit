# frozen_string_literal: true

module MovieKit
  module Opensubtitles
    class API
      module Download
        def download(id)
          payload = {
            file_id: id
          }

          response = conn.post("/api/v1/download", **payload)
          response.body
        end
      end
    end
  end
end
