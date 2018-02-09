#write your code here
def ftoc farenheit
  celcius = (farenheit - 32) * 5 / 9
  celcius
end

def ctof celcius
  c_round = celcius.round(1)
  farenheit = (c_round * 9 / 5) + 32
  farenheit
end
