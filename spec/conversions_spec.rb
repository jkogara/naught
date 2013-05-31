require 'spec_helper.rb'

describe 'explicitly convertable null object' do
  let(:null_class) {
    Naught.build do |b|
      b.define_explicit_conversions
    end
  }
  subject(:null) { null_class.new }

  it "defines common explicit conversions to return zero values" do
    expect(null.to_s).to eq("")
    expect(null.to_a).to eq([])
    expect(null.to_i).to eq(0)
    expect(null.to_f).to eq(0.0)
    expect(null.to_c).to eq(Complex(0))
    expect(null.to_r).to eq(Rational(0))
    expect(null.to_h).to eq({})
    expect(null.to_json).to eq('null')
  end
end