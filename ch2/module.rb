# Target Module
module Brainfsck
  # Target Class
  class Parser
    def self.say
      true
    end
  end
end

module Whitespace
  # Target Class
  class Parser
    def self.say
      true
    end
  end
end

require 'rspec'

RSpec.describe 'Module' do
  it 'Brainfsck' do
    expect(Brainfsck::Parser.say).to eq(true)
  end

  it 'Whitespace' do
    expect(Whitespace::Parser.say).to eq(true)
  end
end
