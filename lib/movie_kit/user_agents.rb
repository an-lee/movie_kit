# frozen_string_literal: true

module MovieKit
  module UserAgents
    SELECTORS = [
      '[description="Browsers - Windows"] > useragent',
      '[description="Browsers - Mac"]     > useragent',
      '[description="Browsers - Linux"]   > useragent'
      # '[description="Mobile Devices"]     > [description="Browsers"] > useragent'
    ].freeze
    FILE = File.join(__dir__, "useragents.txt")

    def self.refresh
      url = "http://techpatterns.com/downloads/firefox/useragentswitcher.xml"
      response = Faraday.get(url).body
      doc = Nokogiri::XML response

      agents = SELECTORS.flat_map do |selector|
        doc.css(selector).map { |u| u.attr "useragent" }
      end

      File.write FILE, agents.join("\n")
    end

    def self.random
      refresh unless File.exist?(FILE)

      @user_agents ||= File.readlines(FILE).map(&:chomp)
      @user_agents.sample
    end
  end
end
