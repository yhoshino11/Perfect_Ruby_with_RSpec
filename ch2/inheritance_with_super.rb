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

# Super Class
class Parent
  def hello
    puts 'Hello, Parent class!'
  end
end

# Child Class
class Child < Parent
  def hello
    super

    puts 'Hello, Child class!'
  end
end

require 'rspec'

RSpec.describe 'Inheritance with super class\'s method' do
  let(:child) { Child.new }
  it 'shows super and child class\'s method' do
    expect(capture_stdout { child.hello }).to eq("Hello, Parent class!\nHello, Child class!\n")
  end
end
