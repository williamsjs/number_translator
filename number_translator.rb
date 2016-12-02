require './number_builder'

def main
  puts "Enter a number between -999,999 and 999,999 for translation: "
  response = gets.chomp

  my_num = NumberBuilder.new(response)

  puts my_num.number_string
end

main
