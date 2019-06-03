# frozen_string_literal: true

module Citywrapper
  class ApiBase
    attr_accessor :config, :response

    JSON_HEADERS = {
      'Content-Type' => 'application/json',
      'Accept' => 'application/json'
    }.freeze

    def initialize
      @config = Citywrapper.configuration
    end

    def request(params: {}, method: :get)
      raise 'Please set your API key' unless config.api_key

      @method = method
      @params = params
      @query_uri = build_query

      run_request
      process_response
    end

    private

    def build_query
      base_api_uri.tap do |uri|
        uri.query = [parameters_for_query, uri.query].compact.join('&')
      end
    end

    def parameters_for_query
      URI.encode_www_form(@params) unless @method == :post
    end

    def process_response
      case @response
      when Net::HTTPNotFound
        raise "Please check the resource type - #{@resource}"
      when Net::HTTPForbidden
        raise 'Please check your API key'
      end

      JSON.parse(@response.body, object_class: OpenStruct)
    end

    def run_request
      case @method
      when :get
        @response = Net::HTTP.get_response(@query_uri)
      when :post
        request = Net::HTTP.new(@query_uri.host, @query_uri.port)
        request.use_ssl = true
        @response = request.post("#{@query_uri.path}?#{@query_uri.query}", @params.to_json, JSON_HEADERS)
      else
        raise 'Only GET or POST'
      end
    end

    def base_api_uri
      URI(base_api_url)
    end

    def base_api_url
      if @resource
        "#{BASE_URL}/#{API_VERSION}/#{@resource}/?key=#{config.api_key}"
      else
        "#{BASE_URL}/#{API_VERSION}/?key=#{config.api_key}"
      end
    end
  end
end
