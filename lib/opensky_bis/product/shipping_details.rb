require 'active_model'

module OpenskyBis
  class Product
    # Shipping details for items being sold on the Opensky platform.
    class ShippingDetails
      include ActiveModel::Model
      include GeneralInit

      attr_accessor :price, :price_with_additional, :alaska_hawaii_price, :alaska_hawaii_price_with_additional, :puerto_rico_price, :puerto_rico_price_with_additional, :details, :estimated_days

      validates_presence_of :price, :price_with_additional, :alaska_hawaii_price, :alaska_hawaii_price_with_additional, :puerto_rico_price, :puerto_rico_price_with_additional, :details, :estimated_days
    end
  end
end
