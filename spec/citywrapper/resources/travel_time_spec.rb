# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Citywrapper::TravelTime do
  subject { Citywrapper::TravelTime }

  describe '.between' do
    it 'parses the result correctly' do
      VCR.use_cassette('resources/traveltime') do
        response = subject.between(
          start_coordinates: [51.525246, 0.084672],
          end_coordinates: [51.559098, 0.074503]
        )

        expect(response.travel_time_minutes).to eq(40)
      end
    end
  end
end
