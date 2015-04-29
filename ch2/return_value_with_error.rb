require 'rspec'

RSpec.describe 'Return Error value' do
  it 'example' do
    response =
      begin
        value = 'return value'
        fail
      rescue
        value
      ensure
        'This is not return value'
      end

    expect(response).to eq('return value')
  end
end
