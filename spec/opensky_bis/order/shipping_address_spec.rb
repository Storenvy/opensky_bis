describe OpenskyBis::Order::ShippingAddress do
  before do
    @product_variant = OpenskyBis::Order::ShippingAddress.new
  end

  it { should validate_presence_of(:full_name) }
  it { should validate_presence_of(:address_1) }
  it { should validate_presence_of(:address_2) }
  it { should validate_presence_of(:city) }
  it { should validate_presence_of(:county) }
  it { should validate_presence_of(:state) }
  it { should validate_presence_of(:zip) }
  it { should validate_presence_of(:country_code) }
  it { should validate_presence_of(:phone_number) }
  it { should validate_presence_of(:phone_ext) }

  context 'variant' do
    it 'creates an instance of ShippingAddress' do
      expect(@product_variant).to be_instance_of(OpenskyBis::Order::ShippingAddress)
    end
  end
end
