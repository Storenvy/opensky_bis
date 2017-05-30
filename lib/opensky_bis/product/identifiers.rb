module OpenskyBis
  class Product
    # A group of product identifiers that each product can have a subset of.
    class Identifiers
      include GeneralInit
      attr_accessor :asin, :ean, :gtin, :isbn, :jan, :mpn, :upc
    end
  end
end
