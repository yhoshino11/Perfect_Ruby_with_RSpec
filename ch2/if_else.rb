def check(n)
  if n.zero?
    0
  elsif n.even?
    'even'
  elsif n.odd?
    'odd'
  else
    'unknown'
  end
end

require 'rspec'

RSpec.describe 'check number' do
  context 'returns type of the number' do
    specify '0' do
      expect(check(0)).to eq(0)
    end
    specify 'even' do
      expect(check(2)).to eq('even')
    end
    specify 'odd' do
      expect(check(3)).to eq('odd')
    end
  end
end
