# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  _sum = 0
  arr.each do |x|
    _sum += x
  end
  return _sum
end

def max_2_sum arr
   if !arr.empty?
     # tim 2 gia tri max trong mang bang max(2)
     # ham reduce(:xxxx) de ket hop cac phan tu lai bang operator "xxxx"
     arr.max(2).reduce(:+)
   else
     return 0
   end


end

def sum_to_n? arr, n
  return false if arr.empty?
  (arr.empty? && n.zero? || arr.permutation(2).any? { |a, b| a+ b == n})
end

# Part 2

def hello(name)
  return "Hello, ".concat(name)
end

def starts_with_consonant? s
  # s[/[a-zA-Z]+/]  == s de kiem tra string gom toan letter
  if s.start_with?('a','e','i','o','u','A','E','I','O','U') || s.empty? == true || s[/[a-zA-Z]+/]  != s
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  is = s.to_i
  if s == "0"
    return true
  elsif /[a-zA-Z^$3-9*]/.match(s)
    return false
  else
    if /^[10]*00$/.match(s) && is % 2 == 0
      return true
    else
      return false
    end
  end
end

# Part 3

class BookInStock
  #attr_reader va attr_writer cho phep truy cap vao bien
  # instance variable va thay doi gia tri cua no
  #attr_accessor is both reader and writer
  attr_accessor :isbn
  attr_accessor :price

  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    if price <= 0 || isbn.empty?
      raise ArgumentError
    end
  end

  # def to_s
  #   "ISBN: #{@isbn}, price: #{@price}"
  # end

  def price_as_string
    "$%.2f" % @price
  end
end
