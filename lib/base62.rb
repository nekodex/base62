class String
  BASE62_PRIMITIVES = {
    "0" => 0,
    "1" => 1,
    "2" => 2,
    "3" => 3,
    "4" => 4,
    "5" => 5,
    "6" => 6,
    "7" => 7,
    "8" => 8,
    "9" => 9,
    "a" => 10,
    "b" => 11,
    "c" => 12,
    "d" => 13,
    "e" => 14,
    "f" => 15,
    "g" => 16,
    "h" => 17,
    "i" => 18,
    "j" => 19,
    "k" => 20,
    "l" => 21,
    "m" => 22,
    "n" => 23,
    "o" => 24,
    "p" => 25,
    "q" => 26,
    "r" => 27,
    "s" => 28,
    "t" => 29,
    "u" => 30,
    "v" => 31,
    "w" => 32,
    "x" => 33,
    "y" => 34,
    "z" => 35,
    "A" => 36,
    "B" => 37,
    "C" => 38,
    "D" => 39,
    "E" => 40,
    "F" => 41,
    "G" => 42,
    "H" => 43,
    "I" => 44,
    "J" => 45,
    "K" => 46,
    "L" => 47,
    "M" => 48,
    "N" => 49,
    "O" => 50,
    "P" => 51,
    "Q" => 52,
    "R" => 53,
    "S" => 54,
    "T" => 55,
    "U" => 56,
    "V" => 57,
    "W" => 58,
    "X" => 59,
    "Y" => 60,
    "Z" => 61
  }

  def base62_decode
    i = 0
    i_out = 0
    self.split(//).reverse.each do |c|
      place = BASE62_PRIMITIVES.size ** i
      i_out += BASE62_PRIMITIVES[c] * place
      i += 1
    end
    i_out
  end
end


class Integer
  BASE62_PRIMITIVES = (0..9).collect { |i| i.to_s } + ('a'..'z').to_a + ('A'..'Z').to_a
  
  def base62_encode
     number = self
     result = ''
     while(number != 0)
        result = BASE62_PRIMITIVES[number % BASE62_PRIMITIVES.size ].to_s + result
        number /= BASE62_PRIMITIVES.size
     end
    result
  end
end
