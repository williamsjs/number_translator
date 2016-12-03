require './single_digit'
require './teen_digit'
require './double_digit'

class TripleDigit
  attr_reader :num

  def initialize(num)
    @num = num
    build_number
  end

  private
    def build_number
      first_digit = @num.to_s[0].to_i
      last_digits = @num.to_s[1..2].to_i
      @num = SingleDigit.new(first_digit).num + "-Hundred"
      @num += " " + parse_zeroes(last_digits) if last_digits > 0
    end

    def parse_zeroes(last_digits)
      if last_digits > 20
        return DoubleDigit.new(last_digits).num
      elsif last_digits > 9
        return TeenDigit.new(last_digits).num
      elsif last_digits > 0
        return SingleDigit.new(last_digits).num
      end
    end

end
