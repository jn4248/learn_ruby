#write your code here
#assumes any punctuation comes at the end of a word, and that there will not be any double punctuation, like ?. or ".
def translate message
  words = message.split(" ")
  words_pig_latin = []
  vowels = ["a","e","i","o","u"]
  is_capitalized = false
  punctuation = ""
  words.each do |word|
    # check to see if word is is_capitalized
    if word[0] =~ /[A-Z]/
      is_capitalized = true
    end
    #remove any punctuation at the end of the word
    word_length = word.length
    if word[word_length - 1] =~ /[^a-zA-Z0-9]/
      punctuation = word[word_length - 1]
      word = word[0..-2]
    end
    #only translate words longer than 1 letter
    if word_length > 1
      #letter 1 consonant?
      if vowels.include?(word[0]) == false
        #letter 2 consonant?
        if (vowels.include?(word[1]) == false)
          #letter 3 consonant?
          if vowels.include?(word[2]) == false
            #letter 4 consonant?
            if vowels.include?(word[3]) == false
              #special case for words with only consonants
              words_pig_latin.push(word)
            #letters 1, 2, 3 consonant, letter 4 vowel
            else
              first_three_letters = word[0..2]
              new_word = word[3..-1] + first_three_letters + "ay"
              words_pig_latin.push(new_word)
            end
          #letters 1 and 2 consonant, letter 3 vowel
          else
            #special case: letters 2 and 3 are "qu"
            if word[1..2] == "qu"
                first_three_letters = word[0..2]
                new_word = word[3..-1] + first_three_letters + "ay"
            #normal case
            else
              first_two_letters = word[0..1]
              new_word = word[2..-1] + first_two_letters + "ay"
            end
            words_pig_latin.push(new_word)
          end
        #letter 1 consonant, letter 2 vowel
        else
          #special case: first two letters "qu"
          if word[0..1] == "qu"
            first_two_letters = word[0..1]
            new_word = word[2..-1] + first_two_letters + "ay"
          else
          #normal case
            first_letter = word[0]
            new_word = word[1..-1] + first_letter + "ay"
          end
          words_pig_latin.push(new_word)
        end
      #letter 1 vowel
      else
        new_word = word + "ay"
        words_pig_latin.push(new_word)
      end
    else
      words_pig_latin.push(word)
    end
    #if this word was capitalized, adjust the new pig-latin word to be too, and reset is_capitalized
    if is_capitalized == true
      words_pig_latin.last.capitalize!
      is_capitalized = false
    end
    # if this word had punctuation, add it back in
    if punctuation.length > 0
      last_word = words_pig_latin.last + punctuation
      words_pig_latin.pop
      words_pig_latin.push(last_word)
      punctuation = ""
    end
  end
  pig_latin_phrase = words_pig_latin.join(" ")
  pig_latin_phrase
end
