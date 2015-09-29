num1 = 24
num2 = 18

sum = num1 + num2
difference = num1 - num2
quotient = num1.to_f / num2
product = num1 * num2
modulus = num1 % num2

describe 'num1' do
  it "is defined as a local variable" do
    expect(defined?(num1)).to eq 'local-variable'
  end

  it "is an integer" do
    expect(num1).to be_a Fixnum
  end
end

describe 'num2' do
  it "is defined as a local variable" do
    expect(defined?(num2)).to eq 'local-variable'
  end

  it "is an integer" do
    expect(num2).to be_a Fixnum
  end
end

describe 'sum' do
  it "is defined as a local variable" do
    expect(defined?(sum)).to eq 'local-variable'
  end

  it "is assigned the value of num1 + num2" do
    expect(sum).to eq num1 + num2
  end
end

describe 'difference' do
  it "is defined as a local variable" do
    expect(defined?(difference)).to eq 'local-variable'
  end

  it "is assigned the value of num1 - num2" do
    expect(difference).to eq num1 - num2
  end
end

describe 'product' do
  it "is defined as a local variable" do
    expect(defined?(product)).to eq 'local-variable'
  end

  it "is assigned the value of num1 * num2" do
    expect(product).to eq num1 * num2
  end
end

describe 'quotient' do
  it "is defined as a local variable" do
    expect(defined?(quotient)).to eq 'local-variable'
  end

  it "is assigned the value of num1 / num2" do
    expect(quotient).to eq num1.to_f / num2.to_f
  end
end

describe 'modulus' do
  it "is defined as a local variable" do
    expect(defined?(modulus)).to eq 'local-variable'
  end

  it "is assigned the value of num1 % num2" do
    expect(modulus).to eq num1.to_f % num2.to_f
  end
end