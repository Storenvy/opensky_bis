require 'active_model'

module OpenskyBis
  class Product
    # A product's dimensions.
    # Weight will be set to a default value to work with BIS.
    class Dimensions
      include ActiveModel::Model

      attr_accessor :width, :height, :length, :weight

      validates_presence_of :width, :height, :length

      def weight
        @weight ||= 750
      end
    end
  end
end
