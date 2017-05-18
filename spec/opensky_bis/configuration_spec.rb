require_relative '../spec_helper'

describe OpenskyBis::Configuration do
  before do
    @success_url = 'just a successful test'
    @failure_url = 'just a failed test'
    config.api_key = ENV['BIS_API_KEY']
    config.secret_key = ENV['BIS_SECRET_KEY']
    config.success_url = @success_url
    config.failure_url = @failure_url
  end

  context 'with configuration block' do
    it 'returns the correct api_key' do
      expect(OpenskyBis.configuration.api_key).to eq(ENV['BIS_API_KEY'])
    end

    it 'returns the correct secret_key' do
      expect(OpenskyBis.configuration.secret_key).to eq(ENV['BIS_SECRET_KEY'])
    end

    it 'returns the correct success_url' do
      expect(OpenskyBis.configuration.success_url).to eq(@success_url)
    end

    it 'returns the correct failure_url' do
      expect(OpenskyBis.configuration.failure_url).to eq(@failure_url)
    end
  end

  context 'without configuration block' do
    before do
      OpenskyBis.reset
    end

    it 'raises a configuration error for access_key' do
      expect { OpenskyBis.configuration.access_key }.to raise_error(OpenskyBis::Errors::Configuration)
    end

    it 'raises a configuration error for secret_key' do
      expect { OpenskyBis.configuration.secret_key }.to raise_error(OpenskyBis::Errors::Configuration)
    end

    it 'raises a configuration error for success_url' do
      expect { OpenskyBis.configuration.success_url }.to raise_error(OpenskyBis::Errors::Configuration)
    end

    it 'raises a configuration error for failure_url' do
      expect { OpenskyBis.configuration.failure_url }.to raise_error(OpenskyBis::Errors::Configuration)
    end
  end

  context '#reset' do
    it 'resets configured values' do
      expect(OpenskyBis.configuration.access_key).to eq(ENV['BIS_API_KEY'])
      expect(OpenskyBis.configuration.secret_key).to eq(ENV['BIS_SECRET_KEY'])
      expect(OpenskyBis.configuration.success_url).to eq(@success_url)
      expect(OpenskyBis.configuration.failure_url).to eq(@failure_url)

      OpenskyBis.reset
      expect { OpenskyBis.configuration.access_key }.to raise_error(OpenskyBis::Errors::Configuration)
      expect { OpenskyBis.configuration.secret_key }.to raise_error(OpenskyBis::Errors::Configuration)
      expect { OpenskyBis.configuration.success_url }.to raise_error(OpenskyBis::Errors::Configuration)
      expect { OpenskyBis.configuration.failure_url }.to raise_error(OpenskyBis::Errors::Configuration)
    end
  end
end
