require 'rspec'

RSpec.describe 'Here Document' do
  let(:hello) { 'Hello World' }
  let(:japan) { 'Good Night Japan' }
  it 'with formula' do
    str = <<-EOS
#{hello}
#{japan}
EOS
    expect(str).to eq("#{hello}\n#{japan}\n")
  end

  it 'escape formula' do
    str = <<'EOS'
#{hello}
#{japan}
EOS
    expect(str).to eq("\#{hello}\n\#{japan}\n")
  end
end
