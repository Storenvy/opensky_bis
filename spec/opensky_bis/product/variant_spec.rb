describe OpenskyBis::Product::Variant do
  before do
    @product_variant = OpenskyBis::Product::Variant.new
  end

  it { should validate_presence_of(:product_id) }
  it { should validate_presence_of(:sku) }
  it { should validate_presence_of(:msrp) }
  it { should validate_presence_of(:attributes) }
  it { should validate_presence_of(:choices) }
  it { should validate_presence_of(:dimensions) }
  it { should validate_presence_of(:identifiers) }
  it { should validate_presence_of(:images) }
  it { should validate_presence_of(:price) }
  it { should validate_presence_of(:quantity) }

  context 'variant' do
    it 'creates an instance of variant' do
      expect(@product_variant).to be_instance_of(OpenskyBis::Product::Variant)
    end
  end
end
