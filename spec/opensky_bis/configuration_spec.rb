describe OpenskyBis::Configuration do
  before do
    @success_url = 'just a successful test'
    @failure_url = 'just a failed test'
    @api_key = 'abcde12345'
    @secret_key = 'itsasecrettoeverbody'

    OpenskyBis.configure do |config|
      config.api_key = @api_key
      config.secret_key = @secret_key
      config.success_url = @success_url
      config.failure_url = @failure_url
    end
  end

  context 'with configuration block' do
    it 'returns the correct api_key' do
      expect(OpenskyBis.configuration.api_key).to eq @api_key
    end

    it 'returns the correct secret_key' do
      expect(OpenskyBis.configuration.secret_key).to eq @secret_key
    end

    it 'returns the correct success_url' do
      expect(OpenskyBis.configuration.success_url).to eq @success_url
    end

    it 'returns the correct failure_url' do
      expect(OpenskyBis.configuration.failure_url).to eq @failure_url
    end
  end

  context 'without configuration block' do
    before do
      OpenskyBis.reset
    end

    it 'raises a configuration error for api_key' do
      expect { OpenskyBis.configuration.api_key }.to raise_error(OpenskyBis::Errors::Configuration)
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
      expect(OpenskyBis.configuration.api_key).to eq @api_key
      expect(OpenskyBis.configuration.secret_key).to eq @secret_key
      expect(OpenskyBis.configuration.success_url).to eq @success_url
      expect(OpenskyBis.configuration.failure_url).to eq @failure_url

      OpenskyBis.reset
      expect { OpenskyBis.configuration.api_key }.to raise_error(OpenskyBis::Errors::Configuration)
      expect { OpenskyBis.configuration.secret_key }.to raise_error(OpenskyBis::Errors::Configuration)
      expect { OpenskyBis.configuration.success_url }.to raise_error(OpenskyBis::Errors::Configuration)
      expect { OpenskyBis.configuration.failure_url }.to raise_error(OpenskyBis::Errors::Configuration)
    end
  end
end
