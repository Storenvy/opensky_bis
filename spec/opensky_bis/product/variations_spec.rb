describe OpenskyBis::Product::Variations do
  before do
    @product_variation = OpenskyBis::Product::Variations.new
  end

  it { should validate_presence_of(:options) }
  it { should validate_presence_of(:variants) }

  context 'variations' do
    it 'creates an instance of variations' do
      expect(@product_variation).to be_instance_of(OpenskyBis::Product::Variations)
    end
  end
end
