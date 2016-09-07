$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'citywrapper'
require 'vcr'

VCR.configure do |config|
  config.cassette_library_dir = 'spec/fixtures/vcr_cassettes'
  config.hook_into :webmock
end

RSpec.configure do |config|
  config.before(:each) do
    Citywrapper.configure do |c|
      c.api_key = 'API_KEY'
    end
  end
end
