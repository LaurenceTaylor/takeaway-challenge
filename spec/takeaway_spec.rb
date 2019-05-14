require 'takeaway'

describe Takeaway do
  subject(:takeaway) { described_class.new(menu) }
  let(:menu) { double(:menu) }

  describe '#list_dishes' do
    it 'should list available dishes on the menu' do
      listed_dishes = "various dishes"
      allow(menu).to receive(:list_dishes).and_return(listed_dishes)
      expect(takeaway.list_dishes).to eq(listed_dishes)
    end
  end

  describe '#add_to_order' do
    it 'should be able to add a dish to the order' do
      takeaway.add_to_order('Halloumi')
      expect(takeaway.order_so_far.include?('Halloumi')).to eq(true)
    end

    it 'should stored ordered dishes in a hash with their quantity' do
      takeaway.add_to_order('Halloumi')
      takeaway.add_to_order('Halloumi')
      expect(takeaway.order_so_far).to eq( { 'Halloumi' => 2 } )
    end
  end
end
