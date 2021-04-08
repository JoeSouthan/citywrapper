# frozen_string_literal: true

require 'net/http'
require 'ostruct'
require 'json'
require 'citywrapper/version'
require 'citywrapper/api_base'
require 'citywrapper/configuration'
require 'citywrapper/resources/travel_time'
require 'citywrapper/resources/coverage'
require 'citywrapper/resources/single_point_coverage'

module Citywrapper
  BASE_URL = 'https://developer.citymapper.com/api'
  API_VERSION = '1'

  class << self
    attr_accessor :api_key
    attr_writer :configuration
  end

  def self.configuration
    warn "NOTE: Citymaper APIs are now deprecated and will likely not work in the future"
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
