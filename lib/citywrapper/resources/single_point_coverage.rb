module Citywrapper
  class SinglePointCoverage < ApiBase
    def initialize
      super
      @resource = 'singlepointcoverage'
    end

    def self.at(coordinates: [])
      new.request(
        params: {
          coord: coordinates.join(',')
        }
      )
    end
  end
end
