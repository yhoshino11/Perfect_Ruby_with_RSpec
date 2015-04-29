require 'rspec'

RSpec.describe 'Begin / Rescue / Ensure' do
  it 'example' do
    exeption = proc do
      begin
        file = File.open('ghostfile')
      rescue => e
        "#{e.class}"
      ensure
        file.close if file
      end
    end

    expect(exeption.call).to eq('Errno::ENOENT')
  end
end
