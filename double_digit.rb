require './single_digit'

class DoubleDigit
  attr_accessor :num

  DOUBLES = [ "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety" ]

  def initialize(num)
    @num = num
  end
end
