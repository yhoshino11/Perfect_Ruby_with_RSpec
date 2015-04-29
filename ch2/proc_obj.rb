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

require 'rspec'

RSpec.describe 'Proc' do
  it 'with args' do
    greeter = proc { |name| puts "Hello, #{name}!" }

    expect(capture_stdout { greeter.call('Proc') }).to eq("Hello, Proc!\n")
  end
end
