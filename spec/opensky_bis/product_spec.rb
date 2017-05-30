describe OpenskyBis::Product do
  before do
    @product = OpenskyBis::Product.new
  end

  it { should validate_presence_of(:sku) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:price) }
  it { should validate_presence_of(:msrp) }
  it { should validate_presence_of(:quantity) }
  it { should validate_presence_of(:condition) }
  it { should validate_presence_of(:brand) }
  it { should validate_presence_of(:identifers) }
  it { should validate_presence_of(:dimensions) }
  it { should validate_presence_of(:attributes) }
  it { should validate_presence_of(:product_video_url) }
  it { should validate_presence_of(:images) }
  it { should validate_presence_of(:channels) }
  it { should validate_presence_of(:variations) }

  context 'product' do
    it 'creates an instance of Product' do
      expect(@product).to be_instance_of(OpenskyBis::Product)
    end
  end
end
