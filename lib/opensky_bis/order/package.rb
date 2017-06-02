require 'active_model'

module OpenskyBis
  class Order
    # Shipping details for items being sold on the Opensky platform.
    class Package
      include ActiveModel::Model
      include GeneralInit
      require_relative 'package_item'

      attr_accessor :order_package_id, :channel_order_package_id, :carrier, :tracking_number, :weight, :shipped_at, :package_items

      validates_presence_of :order_package_id, :channel_order_package_id, :carrier, :tracking_number, :weight, :shipped_at, :package_items
    end
  end
end
