# frozen_string_literal: true

module Citywrapper
  class Coverage < ApiBase
    def initialize
      super
      @resource = 'coverage'
    end

    def self.for_points(points = [])
      new.request(
        params: {
          points: points
        },
        method: :post
      )
    end
  end
end
