require 'active_model'

module OpenskyBis
  # Use product calls to manage inventory by creating products,
  # updating quantities or other product parameters and retrieving
  # existing product data.
  class Product
    include ActiveModel::Model
    include GeneralInit
    require_relative 'product/identifiers'
    require_relative 'product/image'
    require_relative 'product/dimensions'

    attr_accessor :sku, :name, :description, :price, :msrp, :quantity, :condition, :brand, :identifers, :dimensions, :attributes, :product_video_url, :images, :channels, :variations

    validates_presence_of :sku, :name, :description, :price, :msrp, :quantity, :condition, :brand, :identifers, :dimensions, :attributes, :product_video_url, :images, :channels, :variations

  end
end
