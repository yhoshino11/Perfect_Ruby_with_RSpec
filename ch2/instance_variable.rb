# Target Class
class Ruler
  def length=(val)
    @length = val
  end

  def length
    @length
  end
end

require 'rspec'

RSpec.describe Ruler do
  let(:ruler) { Ruler.new }
  it 'accepts args' do
    ruler.length = 30
    expect(ruler.length).to eq(30)
  end
end
