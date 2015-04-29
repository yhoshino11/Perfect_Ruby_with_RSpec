def hello(names)
  names.each do |name|
    puts "HELLO, #{name.upcase}"
  end
end

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

RSpec.describe 'Names' do
  let(:rubies) { %w(MRI jruby rubinius) }

  it 'returns name' do
    response = capture_stdout { hello(rubies) }

    expect(response).to eq("HELLO, MRI\nHELLO, JRUBY\nHELLO, RUBINIUS\n")
  end
end
