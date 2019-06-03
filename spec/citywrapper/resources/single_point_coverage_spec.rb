# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Citywrapper::SinglePointCoverage do
  subject { Citywrapper::SinglePointCoverage }

  describe '.between' do
    it 'parses the result correctly' do
      VCR.use_cassette('resources/single_point_coverage') do
        response = subject.at(
          coordinates: [51.578973, -0.124147]
        )

        expect(response.points.first.covered).to eq(true)
        expect(response.points.first.coord).to eq([51.578973, -0.124147])
      end
    end
  end
end
