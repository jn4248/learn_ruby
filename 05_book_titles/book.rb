class Book
# write your code here
  attr_accessor :title

  def title
    exceptions = ["the","a","and","is","of","an","in","for","are","but","over"]
    words = @title.downcase.split(" ")
    words.each do |word|
      #capitalize any non-exception words, including the first word of title, regardless of exception or not
      if ((exceptions.include?(word) == false) and (word[0] =~ /[a-zA-Z]/))
        word.capitalize!
      end
    end
    words.first.capitalize!
    @title = words.join(" ")
  end
end
