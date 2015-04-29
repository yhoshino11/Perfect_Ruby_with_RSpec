require 'rspec'

RSpec.describe 'Add Exeption' do
  it 'to method' do
    def meth
      # Do something
      file = File.open('nofile')
    rescue
      'an error occured.'
    else
      File.read
    ensure
      file.close if file
    end

    expect(meth).to eq('an error occured.')
  end

  it 'to class' do
    # Target Class
    class Whatever
      def self.say
        fail StandardError
        rescue
          'an error occured.'
      end
    end

    expect(Whatever.say).to eq('an error occured.')
  end
end
