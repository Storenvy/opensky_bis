RSpec.configure do |config|
  config.before(:all) do
    OpenskyBis.configure do |config|
      config.api_key = ENV['BIS_API_KEY']
      config.secret_key = ENV['BIS_SECRET_KEY']
      config.success_url = ENV['BIS_SUCCESS_URL']
      config.failure_url = ENV['BIS_FAILURE_URL']
    end
  end
end
