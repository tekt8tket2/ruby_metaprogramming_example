require 'days_pick'
require 'days_pick_formatter'

describe DaysPickFormatter do
  let(:days_pick) { DaysPick.new(name: 'ADDvantage Tech', symbol: 'AEY', current_price: '2.580') }

  it 'returns proper formatting' do
    expect(DaysPickFormatter.format(days_pick)).to eq('ADDvantage Tech***AEY***2.580***') 
  end

end
