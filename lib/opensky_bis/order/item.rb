require 'active_model'

module OpenskyBis
  class Order
    # Shipping details for items being sold on the Opensky platform.
    class Item
      include ActiveModel::Model
      include GeneralInit

      attr_accessor :order_item_id, :product_id, :parent_product_id, :channel_order_item_id, :channel_product_id, :name, :status, :quantity, :quantity_shipped, :price, :shipping_price, :handling_price, :tax, :tax_rate, :tax_shipping, :gift_wrap_price, :discount, :undiscounted_price, :shipping_paid, :tax_paid, :weight, :gift_wrap, :gift_message, :customizable, :customization_prompt, :customization, :return_days, :shipping_estimated_days, :sku

      validates_presence_of :order_item_id, :product_id, :parent_product_id, :channel_order_item_id, :channel_product_id, :name, :status, :quantity, :quantity_shipped, :price, :shipping_price, :handling_price, :tax, :tax_rate, :tax_shipping, :gift_wrap_price, :discount, :undiscounted_price, :shipping_paid, :tax_paid, :weight, :gift_wrap, :gift_message, :customizable, :customization_prompt, :customization, :return_days, :shipping_estimated_days, :sku
    end
  end
end
