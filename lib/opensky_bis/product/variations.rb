require 'active_model'

module OpenskyBis
  class Product
    # Use product calls to manage inventory by creating products,
    # updating quantities or other product parameters and retrieving
    # existing product data.
    class Variations
      include ActiveModel::Model
      include GeneralInit
      require_relative 'variant'

      attr_accessor :options, :variants

      validates_presence_of :options, :variants

    end
  end
end
