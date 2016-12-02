require './single_digit'
require './teen_digit'
require './double_digit'

class NumberBuilder
  attr_reader :number, :digit_count, :number_string

  def initialize(number)
    @number = number.to_i
    @digit_count = number.strip.size
    create_number_string
  end

  private
    def create_number_string
      case @digit_count
      when 1
        @number_string = SingleDigit.new(@number).num
      when 2
        @number_string = @number < 20 ? TeenDigit.new(@number).num : DoubleDigit.new(@number).num
      end
    end

end
