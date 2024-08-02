require './lib/caesar_cipher'

puts 'Project: Caesar Cipher'
puts '=' * 22
puts

puts 'Please enter your text: '
user_input = gets.chomp

puts 'Please enter the shift (1~26): '
shift = gets.chomp.to_i

output = CaesarCipher.caesar_cipher(user_input, shift)
puts output