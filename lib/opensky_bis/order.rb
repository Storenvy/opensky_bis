require 'active_model'

module OpenskyBis
  # Use order calls to search for orders, retrieve order data and send shipping information to OpenSky.
  class Order
    include ActiveModel::Model
    include GeneralInit
    require_relative 'order/shipping_address'
    require_relative 'order/item'
    require_relative 'order/package'

    attr_accessor :order_id, :channel, :channel_order_id, :channel_seller_id, :channel_buyer_id, :site, :status, :created_at, :shipping_price, :handling_price, :tax, :gift_wrap_price, :discount, :subtotal, :total, :items, :packages, :shipping_address

    validates_presence_of :order_id, :channel, :channel_order_id, :channel_seller_id, :channel_buyer_id, :site, :status, :created_at, :shipping_price, :handling_price, :tax, :gift_wrap_price, :discount, :subtotal, :total, :items, :packages, :shipping_address

  end
end
