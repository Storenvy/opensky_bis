require 'active_model'

module OpenskyBis
  class Product
    # Specific properties for listing the product on the sites of the OSP channel
    class OspChannel
      include ActiveModel::Model
      include GeneralInit

      attr_accessor :sites, :status, :category, :customizable, :customization_prompt, :exclusive, :max_discount_percentage_locked, :max_product_discount, :shipping_details, :storefront_placement

      validates_presence_of :sites, :status, :category, :customizable, :customization_prompt, :exclusive, :max_discount_percentage_locked, :max_product_discount, :shipping_details, :storefront_placement
    end
  end
end
