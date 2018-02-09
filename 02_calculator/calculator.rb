#write your code here
def add(num1, num2)
  sum = num1 + num2
  sum
end

def subtract(num1, num2)
  difference = num1 - num2
  difference
end

def sum number_array
  sum = 0
  number_array.each do |current_number|
    sum += current_number
  end
  sum
end

def multiply(number_array)
  product = 1
  number_array.each do |number|
    product = product * number
  end
  product
end


# only considers integer arguments, but can they be positive, negative, or zero.
# (fractional exponents would simply require calling on Math.sqrt, and expanding the cases significantly)
def power(base, exponent)
  result = 0
  if exponent == 0
    result = 1
  elsif exponent == 1
    result = base
  elsif exponent == -1
    result = 1 / base.round(2)
  else (exponent < -1 or exponent > 1)
    n = 3
    result = base * base
    while n <= exponent
      result = result * base
      n += 1
    end
    if exponent < -1
      result = 1 / result.round(2)
    end
  end
  result
end

# only considers whole numbers (positive intergers, or 0)
def factorial initial_value
  result = 1
  if ([0,1].include?(initial_value))
    #no change to result
  else
    result = 1
    i = initial_value
    while i > 0
      result = result * i
      i -= 1
    end
  end
  result
end
