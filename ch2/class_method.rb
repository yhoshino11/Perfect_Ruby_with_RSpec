# Target Class
class Ruler
  attr_accessor :length

  def self.pair
    [Ruler.new, Ruler.new]
  end
end

require 'rspec'

RSpec.describe Ruler do
  it 'has class method' do
    expect(Ruler.pair.count).to eq(2)
  end
end
