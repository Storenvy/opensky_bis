require 'opensky_bis/configuration'
require 'opensky_bis/errors/configuration'
require 'opensky_bis/signature'
require 'opensky_bis/version'
require 'opensky_bis/general_init'
require 'opensky_bis/product'
require 'opensky_bis/order'

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
