#write your code here
def echo message
  message
end

def shout message
  message.upcase
end

def repeat(message, quantity=2)
  response = message
  (quantity-1).times do
    response = response + " " + message
  end
  response
end

def start_of_word(word, number_of_letters)
  result = ""
  position = 0
  number_of_letters.times do
    result = result + word[position]
    position += 1
  end
  result
end

def first_word(message)
  words = message.split(" ")
  words.first
end

def titleize(message)
  exceptions = ["the","a","and","is","of","an","in","for","are","but","over"]
  words = message.downcase.split(" ")
  words.each do |word|
    #capitalize any non-exception words that start with a letter (capitalize omits words beginning with non-letter characters)
    if ((exceptions.include?(word) == false) and (word[0] =~ /[a-zA-Z]/))
      word.capitalize!
    end
  end
  #capitalize the first word, even if exception
  words.first.capitalize!
  title = words.join(" ")
end
