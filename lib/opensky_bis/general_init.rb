# A general initialization method to use a passed hash to add publically accessible
# attributes.
module OpenskyBis
  module GeneralInit
    def initialize(*h)
      if h.length == 1 && h.first.kind_of?(Hash)
        h.first.each { |k,v| public_send("#{k}=",v) }
      end
    end
  end
end
