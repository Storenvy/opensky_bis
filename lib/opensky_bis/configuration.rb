module OpenskyBis
  class Configuration
    attr_accessor :api_key, :secret_key

    def initialize
      @api_key = nil
      @secret_key = nil
      @success_url = nil
      @failure_url = nil
    end
  end
end
