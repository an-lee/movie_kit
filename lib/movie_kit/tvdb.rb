# frozen_string_literal: true

require_relative "tvdb/api"

module MovieKit
  module Tvdb
    class Error < StandardError; end
    class InvalidTokenError < StandardError; end
  end
end
