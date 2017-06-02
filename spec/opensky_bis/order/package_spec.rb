describe OpenskyBis::Order::Package do
  before do
    @product_variant = OpenskyBis::Order::Package.new
  end
  
  it { should validate_presence_of(:order_package_id) }
  it { should validate_presence_of(:channel_order_package_id) }
  it { should validate_presence_of(:carrier) }
  it { should validate_presence_of(:tracking_number) }
  it { should validate_presence_of(:weight) }
  it { should validate_presence_of(:shipped_at) }
  it { should validate_presence_of(:package_items) }

  context 'variant' do
    it 'creates an instance of Package' do
      expect(@product_variant).to be_instance_of(OpenskyBis::Order::Package)
    end
  end
end
