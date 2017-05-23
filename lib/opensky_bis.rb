require 'opensky_bis/configuration'
require 'opensky_bis/signature'
require 'opensky_bis/version'

module OpenskyBis
  class << self
    attr_accessor :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.reset
    @configuration = Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
