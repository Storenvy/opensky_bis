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
    require_relative 'product/osp_channel'
    require_relative 'product/shipping_details'
    require_relative 'product/variations'

    attr_accessor :product_id, :sku, :name, :description, :price, :msrp, :quantity, :condition, :brand, :identifers, :dimensions, :attributes, :product_video_url, :images, :channels, :variations, :created_at, :updated_at, :deleted_at

    validates_presence_of :sku, :name, :description, :price, :quantity

    validate :validate_images

    def initialize
      @images = []
    end

    # All products must have at least one image, but not more than twelve.
    def validate_images
      errors.add(:images, 'at least one image is required') if @images.empty?

      errors.add(:images, 'too many images') if @images.length > 12
    end
  end
end
