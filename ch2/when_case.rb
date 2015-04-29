require 'rspec'

RSpec.describe 'When, Case' do
  it 'example' do
    stone = 'ruby'

    month =
      case stone
      when 'ruby'
        'July'
      when 'peridot', 'sardonyx'
        'August'
      else
        'Unknown'
      end
    expect(month).to eq('July')
  end
end
