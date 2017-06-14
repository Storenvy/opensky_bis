require 'opensky_bis/configuration'
require 'opensky_bis/errors/configuration'
require 'opensky_bis/errors/application'
require 'opensky_bis/signature'
require 'opensky_bis/version'
require 'opensky_bis/general_init'
require 'opensky_bis/product'
require 'opensky_bis/order'
require 'opensky_bis/api'

module OpenskyBis
  class << self
    attr_accessor :configuration, :seller_id, :seller_key
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
