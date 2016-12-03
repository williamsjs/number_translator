require './single_digit'

class DoubleDigit
  attr_reader :num, :first_digit, :second_digit

  DOUBLES = { 2 => "Twenty", 3 => "Thirty", 4 => "Forty", 5 => "Fifty", 6 => "Sixty", 7 => "Seventy", 8 => "Eighty", 9 => "Ninety" }

  def initialize(num)
    @num = num
    build_number
  end

  private
    def build_number
      first_digit = @num.to_s[0].to_i
      second_digit = @num.to_s[1].to_i
      @num = DOUBLES[first_digit]
      @num +=  "-" + SingleDigit.new(second_digit).num unless second_digit == 0
    end

end
