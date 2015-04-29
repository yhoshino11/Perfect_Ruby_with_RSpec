require 'rspec'

RSpec.describe 'Basic' do
  it 'Raise Error' do
    exeption = proc do
      fail StandardError, 'This is error!'
    end

    expect { exeption.call }.to raise_error(StandardError)
  end
end
