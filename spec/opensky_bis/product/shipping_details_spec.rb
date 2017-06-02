describe OpenskyBis::Product::ShippingDetails do
  before do
    @product_shipping_details = OpenskyBis::Product::ShippingDetails.new
  end

  it { should validate_presence_of(:price) }
  it { should validate_presence_of(:price_with_additional) }
  it { should validate_presence_of(:alaska_hawaii_price) }
  it { should validate_presence_of(:alaska_hawaii_price_with_additional) }
  it { should validate_presence_of(:puerto_rico_price) }
  it { should validate_presence_of(:puerto_rico_price_with_additional) }
  it { should validate_presence_of(:details) }
  it { should validate_presence_of(:estimated_days) }

  context 'shipping_details' do
    it 'creates an instance of ShippingDetails' do
      expect(@product_shipping_details).to be_instance_of(OpenskyBis::Product::ShippingDetails)
    end
  end
end
