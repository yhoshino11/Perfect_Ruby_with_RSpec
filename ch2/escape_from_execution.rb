require 'rspec'

RSpec.describe 'Throw error' do
  it 'as value' do
    value =
      catch :triple_loop do
        loop do
          loop do
            loop do
              throw :triple_loop, 'escape from loop'
            end
          end
        end
      end
    expect(value).to eq('escape from loop')
  end
end
