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

# Target Class
class MyClass
  def hello
    puts 'Hello, My object!'
  end
end

require 'rspec'

RSpec.describe MyClass do
  it 'returns message' do
    expect(capture_stdout { MyClass.new.hello }).to eq("Hello, My object!\n")
  end
end
