describe OpenskyBis::Product do
  before do
    @product = OpenskyBis::Product.new
  end

  it { should validate_presence_of(:sku) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:price) }
  it { should validate_presence_of(:quantity) }

  context 'product' do
    it 'creates an instance of Product' do
      expect(@product).to be_instance_of(OpenskyBis::Product)
    end

    it 'is invalid if there are no images' do
      expect(@product.valid?).to be false
      expect(@product.errors[:images][0]).to eq('at least one image is required')
    end
  end
end
