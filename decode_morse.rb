def decode_char(char)
  morse_dict = {
    'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..', 'E' => '.',
    'F' => '..-.', 'G' => '--.', 'H' => '....',
    'I' => '..', 'J' => '.---', 'K' => '-.-', 'L' => '.-..',
    'M' => '--', 'N' => '-.', 'O' => '---', 'P' => '.--.',
    'Q' => '--.-', 'R' => '.-.', 'S' => '...', 'T' => '-',
    'U' => '..-', 'V' => '...-', 'W' => '.--', 'X' => '-..-',
    'Y' => '-.--', 'Z' => '--..'
  }
  morse_dict.key(char)
end

def decode_word(word)
  word.split(' ').map { |char| decode_char(char) }.join
end

def decode_msg(msg)
  msg.split('  ').map { |word| decode_word(word) }.join(' ')
end

print decode_msg('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
