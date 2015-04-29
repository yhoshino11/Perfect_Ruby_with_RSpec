def add(a, b)
  a + b
end

require 'rspec'

RSpec.describe 'add' do
  it 'returns sum' do
    expect(add(1, 1)).to eq(2)
  end
end
