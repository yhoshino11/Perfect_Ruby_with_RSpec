# Target Class
class Ruler
  attr_accessor :length
end

require 'rspec'

RSpec.describe Ruler do
  let(:ruler) { Ruler.new }
  context 'accepts args' do
    it 'with attr_accessor' do
      ruler.length = 30
      expect(ruler.length).to eq(30)
    end
  end
end
