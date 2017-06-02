describe OpenskyBis::Order do
  before do
    @product = OpenskyBis::Order.new
  end

  it { should validate_presence_of(:order_id) }
  it { should validate_presence_of(:channel) }
  it { should validate_presence_of(:channel_order_id) }
  it { should validate_presence_of(:channel_seller_id) }
  it { should validate_presence_of(:channel_buyer_id) }
  it { should validate_presence_of(:site) }
  it { should validate_presence_of(:status) }
  it { should validate_presence_of(:created_at) }
  it { should validate_presence_of(:shipping_price) }
  it { should validate_presence_of(:handling_price) }
  it { should validate_presence_of(:tax) }
  it { should validate_presence_of(:gift_wrap_price) }
  it { should validate_presence_of(:discount) }
  it { should validate_presence_of(:subtotal) }
  it { should validate_presence_of(:total) }
  it { should validate_presence_of(:items) }
  it { should validate_presence_of(:packages) }
  it { should validate_presence_of(:shipping_address) }

  context 'order' do
    it 'creates an instance of Order' do
      expect(@product).to be_instance_of(OpenskyBis::Order)
    end
  end
end
