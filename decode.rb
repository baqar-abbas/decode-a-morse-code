# Method to Decode a Morse Code Character:
def decode_char(morse_code)
  morse_to_char = {
    '.-'   => 'A',   '-...' => 'B',   '-.-.' => 'C',   '-..'  => 'D',
    '.'    => 'E',   '..-.' => 'F',   '--.'  => 'G',   '....' => 'H',
    '..'   => 'I',   '.---' => 'J',   '-.-'  => 'K',   '.-..' => 'L',
    '--'   => 'M',   '-.'   => 'N',   '---'  => 'O',   '.--.' => 'P',
    '--.-' => 'Q',   '.-.'  => 'R',   '...'  => 'S',   '-'    => 'T',
    '..-'  => 'U',   '...-' => 'V',   '.--'  => 'W',   '-..-' => 'X',
    '-.--' => 'Y',   '--..' => 'Z'
  }
  
  morse_to_char[morse_code]
end

# Method to Decode an Entire Word in Morse Code:

def decode_word(morse_word)
  characters = morse_word.split(' ')
  decoded_word = characters.map { |morse_char| decode_char(morse_char) }.join('')
  decoded_word
end
