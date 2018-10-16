require 'prime'

class Primes

  attr_accessor :array

  def initialize
    @array = []
  end

  def factors num
    (1..(num+1)/2).each do |i|
      if num % i == 0
        @array.push i
      end
    end
  end

  def is_prime? num
    # count = 0
    # (2...num).each do |i|
    #   if num % i == 0
    #     return false
    #   end
    # end
    # return true
    Prime.prime?(num)
  end

  def primes num
    # primes = []
    # factors num
    # @array.each do |i|
    #   if is_prime? i
    #     primes.push i
    #   end
    # end
    # puts primes.last
    # primes
    primes = []
    Prime.each((num+1)/2) do |prime|
      if num % prime == 0
        primes.push prime
      end
    end
    puts primes.last
    primes
  end
end
