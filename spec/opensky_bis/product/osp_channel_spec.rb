describe OpenskyBis::Product::OspChannel do
  before do
    @product_osp_channel = OpenskyBis::Product::OspChannel.new
  end

  context 'osp_channel' do
    it 'creates an instance of OspChannel' do
      expect(@product_osp_channel).to be_instance_of(OpenskyBis::Product::OspChannel)
    end
  end
end
