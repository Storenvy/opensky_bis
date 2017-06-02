describe OpenskyBis::Order::PackageItem do
  before do
    @product_variant = OpenskyBis::Order::PackageItem.new
  end

  it { should validate_presence_of(:order_item_id) }
  it { should validate_presence_of(:quanity) }

  context 'variant' do
    it 'creates an instance of PackageItem' do
      expect(@product_variant).to be_instance_of(OpenskyBis::Order::PackageItem)
    end
  end
end
