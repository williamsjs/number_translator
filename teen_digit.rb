class TeenDigit
  attr_reader :num

  TEENS = [ "Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen" ]

  def initialize(num)
    @num = TEENS[num-10]
  end

end
