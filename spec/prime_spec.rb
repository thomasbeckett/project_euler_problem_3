require_relative '../lib/primes.rb'

describe 'Problem 3' do

  before(:all) do
    @num = Primes.new
  end

  it "should find all the factors of the number " do
    @num.factors(10)
    expect(@num).to respond_to :factors
    expect(@num.array).to be_a Array
    expect(@num.array[2]).to eq 5
  end

  it "should determine if prime" do
    expect(@num).to respond_to :is_prime?
    expect(@num.is_prime?(10)).to eq false
    expect(@num.is_prime?(13)).to eq true
  end

  it "should return the prime factors of a number" do
    @num.primes(600851475143)
    expect(@num).to respond_to :primes
    expect(@num.primes(10)).to be_a Array
    expect(@num.primes(10).max).to eq 5
  end
end
