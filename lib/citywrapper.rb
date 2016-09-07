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
  BASE_URL = 'https://developer.citymapper.com/api'.freeze
  API_VERSION = '1'.freeze

  class << self
    attr_accessor :api_key
    attr_writer :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
