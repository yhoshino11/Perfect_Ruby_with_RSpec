# Target Class
class Ruler
  attr_accessor :length

  def initialize(length)
    @length = length
  end
end

require 'rspec'

RSpec.describe Ruler do
  # let(:ruler) { Ruler.new(30) }
  it 'has constructor' do
    ruler = Ruler.new(30)
    expect(ruler.length).to eq(30)
  end
end
