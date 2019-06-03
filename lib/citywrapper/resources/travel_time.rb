# frozen_string_literal: true

module Citywrapper
  class TravelTime < ApiBase
    def initialize
      super
      @resource = 'traveltime'
    end

    def self.between(start_coordinates: [], end_coordinates: [], time: nil, time_type: nil)
      new.request(
        params: {
          startcoord: start_coordinates.join(','),
          endcoord: end_coordinates.join(','),
          time: time ? time.to_i : nil,
          time_type: time_type
        }
      )
    end
  end
end
