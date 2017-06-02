describe OpenskyBis::Order::Item do
  before do
    @product_variant = OpenskyBis::Order::Item.new
  end

  it { should validate_presence_of(:order_item_id) }
  it { should validate_presence_of(:product_id) }
  it { should validate_presence_of(:parent_product_id) }
  it { should validate_presence_of(:channel_order_item_id) }
  it { should validate_presence_of(:channel_product_id) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:status) }
  it { should validate_presence_of(:quantity) }
  it { should validate_presence_of(:quantity_shipped) }
  it { should validate_presence_of(:price) }
  it { should validate_presence_of(:shipping_price) }
  it { should validate_presence_of(:handling_price) }
  it { should validate_presence_of(:tax) }
  it { should validate_presence_of(:tax_rate) }
  it { should validate_presence_of(:tax_shipping) }
  it { should validate_presence_of(:gift_wrap_price) }
  it { should validate_presence_of(:discount) }
  it { should validate_presence_of(:undiscounted_price) }
  it { should validate_presence_of(:shipping_paid) }
  it { should validate_presence_of(:tax_paid) }
  it { should validate_presence_of(:weight) }
  it { should validate_presence_of(:gift_wrap) }
  it { should validate_presence_of(:gift_message) }
  it { should validate_presence_of(:customizable) }
  it { should validate_presence_of(:customization_prompt) }
  it { should validate_presence_of(:customization) }
  it { should validate_presence_of(:return_days) }
  it { should validate_presence_of(:shipping_estimated_days) }
  it { should validate_presence_of(:sku) }

  context 'variant' do
    it 'creates an instance of Item' do
      expect(@product_variant).to be_instance_of(OpenskyBis::Order::Item)
    end
  end
end
