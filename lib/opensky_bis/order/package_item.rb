require 'active_model'

module OpenskyBis
  class Order
    # Shipping details for items being sold on the Opensky platform.
    class PackageItem
      include ActiveModel::Model
      include GeneralInit

      attr_accessor :order_item_id, :quanity

      validates_presence_of :order_item_id, :quanity
    end
  end
end
