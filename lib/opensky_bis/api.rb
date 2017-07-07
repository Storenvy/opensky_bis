require 'active_model'

module OpenskyBis
  # Api calls to interface with OpenskyBis
  class Api
    include ActiveModel::Model
    include GeneralInit

    attr_accessor :seller_id, :seller_key

    validates_presence_of :seller_id, :seller_key

    def create_products(products)
      # We'll pass the products as an array, even if only one.
      products = [products] unless products.is_a?(Array)

      # Validate the products being passed in.
      return false unless validate_products(products)

    end

    private

    # Make sure that we've got a good number of products and that they are all valid.
    # @param [array<OpenskyBis::Product>] products A list of products.
    # @return [boolean]
    def validate_products(products)
      raise Errors::Application, 'create_products requires at least one product.' if products.count == 0
      raise Errors::Application, 'create_products requires 100 or less products.' if products.count > 100
      raise Errors::Application, 'all products must be OpenskyBis::Product objects' unless validate_products_type(products)
    end

    # Make sure that each item in the product array is actually a
    # OpenskyBis::Product
    # @param [array<OpenskyBis::Product>] products A list of products.
    # @return [boolean]
    def validate_products_type(products)
      products.each do |product|
        return false unless product.kind_of?(OpenskyBis::Product) && product.valid?
      end
      true
    end
  end
end
