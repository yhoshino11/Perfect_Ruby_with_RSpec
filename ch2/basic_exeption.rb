require 'rspec'

RSpec.describe 'Basic Exeption/Error' do
  it 'be called' do
    exeption = proc do
      begin
        1 / 0
      rescue => e
        "#{e.class}"
      end
    end

    expect(exeption.call).to eq('ZeroDivisionError')
  end
end
