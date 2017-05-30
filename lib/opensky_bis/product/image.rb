require 'active_model'

module OpenskyBis
  class Product
    # Product images.  Contains a URL and an order in which to show them when in a group.
    class Image
      include ActiveModel::Model
      include GeneralInit

      attr_accessor :image_url, :order

      validates_presence_of :image_url
    end
  end
end
