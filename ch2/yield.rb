# stdout to variable
# ex.) res = capture_stdout { puts 'hello world' }
def capture_stdout
  out = StringIO.new
  $stdout = out
  yield
  return out.string
ensure
  $stdout = STDOUT
end

# Yield Sample
class Sample
  def self.say
    block_sample do
      puts 'do something'
    end
  end

  def self.block_sample
    puts 'started'
    yield
    puts 'ended'
  end
end

require 'rspec'

RSpec.describe 'yield' do
  it 'example' do
    result = <<-EOS
started
do something
ended
EOS
    expect(capture_stdout { Sample.say }).to eq(result)
  end
end
