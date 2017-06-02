require 'active_model'

module OpenskyBis
  class Product
    # Use product calls to manage inventory by creating products,
    # updating quantities or other product parameters and retrieving
    # existing product data.
    class Variant
      include ActiveModel::Model
      include GeneralInit
      require_relative 'identifiers'
      require_relative 'image'
      require_relative 'dimensions'

      attr_accessor :product_id, :sku, :msrp, :attributes, :choices, :dimensions, :identifiers, :images, :price, :quantity

      validates_presence_of :product_id, :sku, :msrp, :attributes, :choices, :dimensions, :identifiers, :images, :price, :quantity

    end
  end
end
