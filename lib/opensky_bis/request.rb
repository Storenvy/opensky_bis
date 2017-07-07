require 'active_model'

module OpenskyBis
  # Use product calls to manage inventory by creating products,
  # updating quantities or other product parameters and retrieving
  # existing product data.
  class Request
    include ActiveModel::Model
    include GeneralInit
    require_relative 'request/account_seller_parameters'
    require_relative 'request/account_seller_update_status'
    require_relative 'request/category_list'
    require_relative 'request/order_get'
    require_relative 'request/order_list'
    require_relative 'request/order_search'
    require_relative 'request/order_ship'
    require_relative 'request/product_create'
    require_relative 'request/product_get'
    require_relative 'request/product_list'
    require_relative 'request/product_search'
    require_relative 'request/product_status_update'
    require_relative 'request/product_update_bulk'
    require_relative 'request/product_update'

  end
end
