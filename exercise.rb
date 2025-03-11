class Exercise

  def self.has_punctuation(word)
    if word[-1] =~ /[[:alpha:]]/
      return false
    else
      return true
    end
  end

  def self.is_capitalized(word)
    if word[0] == word[0].upcase()
      return true
    else
      return false
    end
  end

  def self.exceeds_four_characters(word)
    if word.length > 4
      return true
    else
      return false
    end
  end

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    # sequence of words individualy stored in array
    wordsIn = str.split(" ")

    wordsOut = []
    word = ""
    wordThrough = ""

    wordsIn.each do |word|
      punctuation = ""

      if has_punctuation(word)
        punctuation = word[-1]
        word = word[0..-2]
      end

      if exceeds_four_characters(word)
        if is_capitalized(word)
          wordThrough =  "Marklar"
        else 
          wordThrough = "marklar"
        end
      else
        wordThrough = word 
      end

      wordThrough = wordThrough + punctuation
      wordsOut.push(wordThrough)
    end
      return wordsOut.join(" ")
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method

    fibonacci = []

    for i in 0..nth
      if i == 0
        fibonacci.push(0)
      elsif i == 1
        fibonacci.push(1)
      else
        fibonacci.push(fibonacci[i-1] + fibonacci[i-2])
      end
    end

     return fibonacci.select { |x| x % 2 == 0 }.inject(:+)
  end

end

