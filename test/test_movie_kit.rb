# frozen_string_literal: true

require "test_helper"

class TestMovieKit < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::MovieKit::VERSION
  end

  def test_that_initializing_cinemeta
    refute_nil MovieKit::Cinemeta::API.new
  end
end
