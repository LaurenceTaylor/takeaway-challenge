require 'menu'

describe Menu do
  describe '#list_dishes' do
    it 'should display the menu with dish name and price' do
      expect(subject.list_dishes).to eq("Halloumi: £5, Shish: £12, Calamari: £5")
    end
  end
end
