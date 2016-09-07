require 'spec_helper'

RSpec.describe Citywrapper::ApiBase do
  subject { Citywrapper::ApiBase }

  describe '#request' do
    it 'raises an error' do
      VCR.use_cassette('base/performs_request') do
        expect { subject.new.request }.to raise_error(/Please check the resource type/)
      end
    end
  end
end
