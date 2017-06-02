require 'active_model'

module OpenskyBis
  class Order
    # Shipping details for items being sold on the Opensky platform.
    class ShippingAddress
      include ActiveModel::Model
      include GeneralInit

      attr_accessor :full_name, :address_1, :address_2, :city, :county, :state, :zip, :country_code, :phone_number, :phone_ext

      validates_presence_of :full_name, :address_1, :address_2, :city, :county, :state, :zip, :country_code, :phone_number, :phone_ext
    end
  end
end
