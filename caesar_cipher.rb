module CaesarCipher
    ALPHABETS = 'abcdefghijklmnopqrstuvwxyz'
    
    def CaesarCipher.calculate_index(char, rotation)
        index = ALPHABETS.index(char) + rotation
        if index > 25
            return index % 26
        else
            return index
        end
    end
        
    def CaesarCipher.caesar_cipher(text, rotation)
        chars = text.split('').map do |ch|
            if ALPHABETS.include? ch
                ALPHABETS[CaesarCipher.calculate_index(ch, rotation)]
            elsif ALPHABETS.include? ch.downcase
                ALPHABETS[CaesarCipher.calculate_index(ch.downcase, rotation)].upcase
            else
                ch
            end
        end
        chars.join
    end
end

if __FILE__ == $0
    puts 'Please enter your text: '
    user_input = gets.chomp

    puts 'Please enter the shift (1~26): '
    shift = gets.chomp.to_i

    output = CaesarCipher.caesar_cipher(user_input, shift)
    puts output
end