describe OpenskyBis::Product::Dimensions do
  before do
    @product_dimensions = OpenskyBis::Product::Dimensions.new
  end

  it { should validate_presence_of(:width) }
  it { should validate_presence_of(:height) }
  it { should validate_presence_of(:length) }

  context 'dimensions' do
    it 'creates an instance of Dimensions' do
      expect(@product_dimensions).to be_instance_of(OpenskyBis::Product::Dimensions)
    end

    it 'gives a default value for weight' do
      expect(@product_dimensions.weight).to equal 750
    end

    context 'when passed dimensions' do
      before do
        @product_dimensions = OpenskyBis::Product::Dimensions.new(
          width: 100,
          height: 200,
          length: 300,
          weight: 400
        )
      end

      it 'has the correct values' do
        expect(@product_dimensions.width).to equal 100
        expect(@product_dimensions.height).to equal 200
        expect(@product_dimensions.length).to equal 300
        expect(@product_dimensions.weight).to equal 400
      end
    end
  end
end
