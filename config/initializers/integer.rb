class Integer
  def to_words
    steps_as_words = {
      1_000_000 => 'million',
      1_000 => 'thousand',
      100 => 'hundred',
      90 => 'ninety',
      80 => 'eighty',
      70 => 'seventy',
      60 => 'sixty',
      50 => 'fifty',
      40 => 'forty',
      30 => 'thirty',
      20 => 'twenty',
      19 => 'nineteen',
      18 => 'eighteen',
      17 => 'seventeen',
      16 => 'sixteen',
      15 => 'fifteen',
      14 => 'fourteen',
      13 => 'thirteen',
      12 => 'twelve',
      11 => 'eleven',
      10 => 'ten',
      9 => 'nine',
      8 => 'eight',
      7 => 'seven',
      6 => 'six',
      5 => 'five',
      4 => 'four',
      3 => 'three',
      2 => 'teo',
      1 => 'one',
      0 => 'zero'
    }

    word_phrase = ''

    # Loop through the `steps_as_words`, then use recursion to find words for each
    # block of values.
    
    steps_as_words.each do |num, word|
      return word_phrase if self == 0
      return "#{word_phrase} #{word}" if self < 9 && self/num > 0
    end
    
    self.strip
  end
end