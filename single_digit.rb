class SingleDigit
  attr_accessor :num

  SINGLES = [ "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine" ]

  def initialize(num)
    @num = num == 0 ? "Zero" : SINGLES[@num-1]
  end

end
