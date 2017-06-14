describe OpenskyBis::Api do
  before do
    @api = OpenskyBis::Api.new
  end

  context 'create_products' do
    it 'raises an exception when passed 0 products' do
      expect { @api.create_products([]) }.to raise_error(OpenskyBis::Errors::Application)
    end

    it 'raises an exception when passed more than 100 products' do
      expect { @api.create_products([*1..101]) }.to raise_error(OpenskyBis::Errors::Application)
    end

    it 'raises an exception when passed an object other than OpenskyBis::Product' do
      expect { @api.create_products("abc") }.to raise_error(OpenskyBis::Errors::Application)
    end

    it 'raises an exception when any object in the array passed is not a OpenskyBis::Product' do
      expect { @api.create_products(["abc", OpenskyBis::Product.new]) }.to raise_error(OpenskyBis::Errors::Application)
    end

    it 'raises an exception when any product is not valid ' do
      expect { @api.create_products([OpenskyBis::Product.new]) }.to raise_error(OpenskyBis::Errors::Application)
    end



  end
end
