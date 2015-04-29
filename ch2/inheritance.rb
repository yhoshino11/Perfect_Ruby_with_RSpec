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
  def hi
    puts 'Hello, Child class!'
  end
end

require 'rspec'

RSpec.describe 'Inheritance' do
  context 'shows' do
    let(:child) { Child.new }
    it 'parent class method' do
      expect(capture_stdout { child.hello }).to eq("Hello, Parent class!\n")
    end

    it 'child class method' do
      expect(capture_stdout { child.hi }).to eq("Hello, Child class!\n")
    end
  end
end
