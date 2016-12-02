require './single_digit'

class DoubleDigit
  attr_accessor :num, :first_digit, :second_digit

  DOUBLES = { 2 => "Twenty", 3 => "Thirty", 4 => "Forty", 5 => "Fifty", 6 => "Sixty", 7 => "Seventy", 8 => "Eighty", 9 => "Ninety" }

  def initialize(num)
    @num = DOUBLES[num.to_s[0].to_i]
    #TODO add single after first digit 
  end

end
