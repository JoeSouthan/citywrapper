require 'spec_helper'

RSpec.describe Citywrapper::Coverage do
  describe '.for_points' do
    it 'parses the result correctly' do
      VCR.use_cassette('resources/coverage') do
        response = described_class.for_points(
          [
            {
              coord: [40.1, -73.0],
              id: 'test1'
            },
            {
              coord: [37.784, -122.402]
            },
            {
              coord: [41.84, -73],
              id: 'test2'
            },
            {
              id: 'test3'
            }
          ]
        )

        expect(response.points).to be_kind_of(Array)
      end
    end
  end
end
