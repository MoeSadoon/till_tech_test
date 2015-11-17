require './lib/price_list.rb'


describe Price_list do
  context 'list of prices' do
    it 'can access list of prices' do
      expect(subject.get_price_list).to have_key("prices")
    end

    it 'has a price for a flat white' do
      expect(subject.read_price_list).to have_key('Flat White')
    end

  end
end
