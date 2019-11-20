class PhoneticAlphabetizer
  DICTIONARY = {
    ' ' => "Space",
    '-' => "Dash",
    '.' => "Stop",
    '0' => "Zero",
    '1' => "One",
    '2' => "Two",
    '3' => "Three",
    '4' => "Four",
    '5' => "Five",
    '6' => "Six",
    '7' => "Seven",
    '8' => "Eight",
    '9' => "Niner",
    'A' => "Alpha",
    'B' => "Bravo",
    'C' => "Charlie",
    'D' => "Delta",
    'E' => "Echo",
    'F' => "Foxtrot",
    'G' => "Golf",
    'H' => "Hotel",
    'I' => "India",
    'J' => "Juliet",
    'K' => "Kilo",
    'L' => "Lima",
    'M' => "Mike",
    'N' => "November",
    'O' => "Oscar",
    'P' => "Papa",
    'Q' => "Quebec",
    'R' => "Romeo",
    'S' => "Sierra",
    'T' => "Tango",
    'U' => "Uniform",
    'V' => "Victor",
    'W' => "Whiskey",
    'X' => "X-ray",
    'Y' => "Yankee",
    'Z' => "Zulu",
  }

  def initialize(text : String)
    @text = text
  end

  def call
    @text.chars.map { |char| DICTIONARY.fetch(char.upcase, char) }.join(' ')
  end
end
