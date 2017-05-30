$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'rspec'
require 'pry'
require 'active_model'
require 'shoulda/matchers'

require_relative '../lib/opensky_bis'

RSpec.configure do |config|
  config.warnings = false
  config.include Shoulda::Matchers
  config.before(:all) do
    OpenskyBis.configure do |config|
      config.api_key = ENV['BIS_API_KEY']
      config.secret_key = ENV['BIS_SECRET_KEY']
      config.success_url = ENV['BIS_SUCCESS_URL']
      config.failure_url = ENV['BIS_FAILURE_URL']
    end
  end
end
