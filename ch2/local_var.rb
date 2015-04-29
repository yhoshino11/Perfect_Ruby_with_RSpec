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

RSpec.describe 'local_var' do
  it 'raise err' do
    greeting = 'Hello, '
    people = %w(Alice Bob)

    stdout = capture_stdout do
      people.each do |person|
        puts greeting + person
      end
    end

    expect(stdout).to eq("Hello, Alice\nHello, Bob\n")
    expect { puts person }.to raise_error(NameError)
  end
end
