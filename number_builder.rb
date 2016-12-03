require './single_digit'
require './teen_digit'
require './double_digit'
require './triple_digit'

class NumberBuilder
  attr_reader :number_string

  #TODO handle negative numbers here
  def initialize(number)
    @number_string = number.strip.size > 3 ? split_number(number.to_i) : create_number_string(number.to_i)
  end

  private
    def split_number(num)
      number_string = ""
      numbers = num.to_s.split("")
      hundred_digits = numbers.pop(3)
      number_string += create_number_string(numbers.join.to_i) + " Thousand "
      number_string += create_number_string(hundred_digits.join.to_i)
    end

    def create_number_string(num)
      case num.to_s.split("").size
      when 1
        return SingleDigit.new(num).num
      when 2
        return num < 20 ? TeenDigit.new(num).num : DoubleDigit.new(num).num
      when 3
        return TripleDigit.new(num).num
      end
    end

end
