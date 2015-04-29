require 'rspec'

RSpec.describe 'Begin / Rescue / Ensure' do
  it 'example' do
    exeption =
      begin
        file = File.open('ghostfile')
      rescue => e
        "#{e.class}"
      ensure
        file.close if file
      end

    expect(exeption).to eq('Errno::ENOENT')
  end
end
