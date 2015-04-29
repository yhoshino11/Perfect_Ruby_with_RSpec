# Target Class
class Ruler
  attr_accessor :length

  def set_default_length
    self.length = 30
  end
end

require 'rspec'

RSpec.describe Ruler do
  let(:ruler) { Ruler.new }
  it 'default length' do
    ruler.set_default_length
    expect(ruler.length).to eq(30)
  end
end
