module OpenskyBis
  class Configuration
    attr_accessor :api_key, :secret_key, :success_url, :failure_url

    def initialize
      @api_key = nil
      @secret_key = nil
      @success_url = nil
      @failure_url = nil
    end

    def api_key
      raise Errors::Configuration, "OpenskyBis api key missing! See the documentation for configuration settings." unless @api_key
      @api_key
    end

    def secret_key
      raise Errors::Configuration, "OpenskyBis secret key missing! See the documentation for configuration settings." unless @secret_key
      @secret_key
    end

    def success_url
      raise Errors::Configuration, "OpenskyBis success url missing! See the documentation for configuration settings." unless @success_url
      @success_url
    end

    def failure_url
      raise Errors::Configuration, "Oauth failure url missing! See the documentation for configuration settings." unless @failure_url
      @failure_url
    end
  end
end
